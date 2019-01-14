--
-- Group spawner was meant as a way to prevent the 'trickling' effect from units produced quickly one after the other
-- It creates a bunch of units (defined in luarules/configs/group_defs.lua) after a single one is trained
-- These aren't "squads", you retain full individual control of each unit after the group is created
--

function gadget:GetInfo()
	return {
		name      = "Group Spawner",
		desc      = "Spawns groups when certain units are created",
		author    = "Breno 'MaDDoX' Azevedo",
		date      = "August 17 2017",
		license   = "GNU GPL v2",
		layer     = -5,
		enabled   = true  --  loaded by default?
	}
end

if (not gadgetHandler:IsSyncedCode()) then
	return false
end

-- # Requires the api_delay.lua gadget
local DelayCall = GG.Delay.DelayCall
-- Synced Read
local GetCommandQueue      = Spring.GetCommandQueue
local GetUnitBasePosition  = Spring.GetUnitBasePosition
local GetUnitBuildFacing   = Spring.GetUnitBuildFacing
local GetUnitStates        = Spring.GetUnitStates
-- Synced Ctrl
local CreateUnit           = Spring.CreateUnit
-- Unsynced Ctrl
local GiveOrderToUnit      = Spring.GiveOrderToUnit
local function isnumber(x) return (type(x) == 'number')  end

-- Constants
--local NONBLOCKING_TIME = 30 * 5 -- how long after spawn they don't block. 5 seconds.

-- Variables
local startFrame

local groupDefs = { }
local builderOf = { }  -- maps unitID -> builderID (factory/mobile builder)
local builders  = { }  -- keep track of builders
local AllUnits = Spring.GetAllUnits()
--local unitDefsData = VFS.Include("gamedata/unitdefs_data.lua")

function gadget:Initialize()
	groupDefs = include("luarules/configs/group_defs.lua")
	startFrame = Spring.GetGameFrame()
end

function gadget:gameFrame(n)
	if n == startFrame then
		for _, unitID in AllUnits do
			local teamID = Spring.GetUnitTeam(unitID)
			local unitDefID = Spring.GetUnitDefID(unitID)
			gadget:UnitCreated(unitID, unitDefID, teamID)
		end
	end
end

local function CreateGroup(unitID, unitDefID, teamID, builderID, groupDef)

	if groupDef == nil then
		groupDef = { members = {}, name = "", description = "", buildPic = ""}
		--[[	{
				members = {
					"armpw",
					"armpw",
					"armpw",
				},
				name = "Peewee Group",
				description = "3 x Peewee Group",
				--buildCostMetal = 150, --2500
				buildPic = "ARMPW.DDS",
			} ]]
	
		local name = UnitDefs[unitDefID].name
		--#debug Spring.Echo("Trying to find uDef of: "..name)
		--#debug Spring.Echo("UnitDefs groupsize: "..tostring(UnitDefs[unitDefID].customParams.groupsize))
		local groupSize = tonumber(UnitDefs[unitDefID].customParams.groupsize)
		if isnumber(groupSize) and groupSize >= 2 then
			-- One is always spawned, so deduct 1
			for i = 1, groupSize-1 do
				table.insert(groupDef.members, name)
			end
			groupDef.name = unitDefID.." Group"
			groupDef.description = groupSize.."x "..name.."s"
			groupDef.buildPic = UnitDefs[unitDefID].buildpic
		end

--		for _, uData in pairs(unitDefsData.data) do
--			if type(uData) == "table" and uData[1] == name then
--				local dataEntry = uData[2]
--				if (dataEntry.customparams ~= nil and dataEntry.customparams.groupsize ~= nil) then
--					Spring.Echo(" uDef groupsize = ".. dataEntry.customparams.groupsize)
--				else
--					return
--				end
--			end
--		end
	end

	local px, py, pz = GetUnitBasePosition(unitID)
	local unitHeading = 0

	-- Get the orders for the group spawner
	local states = nil
	local filteredQueue = {}
	local queue = GetCommandQueue(unitID, -1)

	if queue then
		-- Ignore 'internal' commands
		for _, cmd in ipairs(queue) do
			local opts = cmd.options
			if (not opts.internal) then
				filteredQueue[#filteredQueue+1] = cmd
				--GiveOrderToUnitArray(group_units, v.id, v.params, opts.coded)
			end
		end
	end
	
	if builderID then
		unitHeading = GetUnitBuildFacing(builderID)
		states = GetUnitStates(builderID)
	end

	local xSpace, zSpace = 0, 0 -- -5, -5

	-- Spawn the units
	local spawnDelay = 5
	for i, unitName in ipairs(groupDef.members) do
		local thisDelay = i * spawnDelay
		-- local newUnitID = DelayCall(CreateUnit, {unitName, px+xSpace, py, pz+zSpace, unitHeading, teamID}, thisDelay)
		DelayCall(CreateUnitWithQueue, {unitName, px+xSpace, py, pz+zSpace, unitHeading, teamID, states, filteredQueue}, thisDelay)
		
		if (i % 4 == 0 and not (xSpace == 0 and zSpace == 0)) then
			xSpace = -2
			zSpace = zSpace + 2
		else
			xSpace = xSpace + 2
		end
	end
	--DestroyUnit(unitID, false, true)
end

-- Creates a unit while assigning an existing order queue (in this case, inherited from factory)
function CreateUnitWithQueue (unitName, px, py, pz, unitHeading, teamID, states, queue)
	local newUnitID = CreateUnit (unitName, px, py, pz, unitHeading, teamID)
	if newUnitID then
		--Spring.Log(' spawned unit: '..newUnitID)
		if states then
			-- Let's delay the order 'inheritance' one extra frame to be sure the unit is created
			if UnitDefNames[unitName].fireState == -1 then -- unit set to inherit from builder
				GiveOrderToUnit (newUnitID,  CMD.FIRE_STATE, { states.firestate }, 0)
			end
			if UnitDefNames[unitName].moveState == -1 then -- unit set to inherit from builder
				GiveOrderToUnit (newUnitID,  CMD.MOVE_STATE, { states.movestate }, 0)
			end
		end
		if queue then
			for _, cmd in ipairs(queue) do
				GiveOrderToUnit (newUnitID, cmd.id, cmd.params, cmd.options.coded)
			end
		end
	end
	
end

-- Assign the builderID of group-assigned units
function gadget:UnitCreated(unitID, unitDefID, teamID, builderID)
	if groupDefs[unitDefID] then
		builderOf[unitID] = builderID
		if builderID then
			builders[builderID] = true
		end
	end
end

-- We don't use gadget:UnitFinished to prevent spawn recursiveness
function gadget:UnitFromFactory(unitID, unitDefID, unitTeam, factID, factDefID, userOrders)
	--Spring.Echo("Group building unit: "..type(unitDefID).." || "..unitDefID.." Team: "..unitTeam)
	if groupDefs[unitDefID] then
		local groupDef = groupDefs[unitDefID]
		if groupDef == nil then
			return end
		DelayCall(CreateGroup, {unitID, unitDefID, unitTeam, builderOf[unitID], groupDef})
		return
	end

	DelayCall(CreateGroup, {unitID, unitDefID, unitTeam, builderOf[unitID]})
end
