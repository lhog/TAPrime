return {
	armart = {
		acceleration = 0.0154,
		brakerate = 0.0462,
		buildcostenergy = 2100,
		buildcostmetal = 135,
		buildpic = "armart.DDS",
		buildtime = 2998,
		canmove = true,
		category = "ALL TANK WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 3",
		collisionvolumescales = "31 20 39",
		collisionvolumetype = "Box",
		corpse = "DEAD",
		description = "Light Artillery Vehicle",
		energymake = 1,
		energyuse = 1,
		explodeas = "smallexplosiongeneric",
		footprintx = 3,
		footprintz = 3,
		hightrajectory = 1,
		idleautoheal = 5,
		idletime = 1800,
		leavetracks = true,
		maxdamage = 556,
		maxslope = 15,
		maxvelocity = 1.52,
		maxreversevelocity = 1.52*0.60,
		maxwaterdepth = 8,
		movementclass = "TANK3",
		name = "Shellshocker",
		nochasecategory = "VTOL",
		objectname = "armart",
		script = "BASICTANKSCRIPT.LUA",
		pushresistant = true,
		seismicsignature = 0,
		selfdestructas = "smallExplosionGenericSelfd",
		sightdistance = 364,
		trackoffset = 6,
		trackstrength = 5,
		tracktype = "StdTank",
		trackwidth = 30,
		turninplace = true,
		turninplaceanglelimit = 110,
		turninplacespeedlimit = 1.29228,
		turnrate = 393.79999,
		customparams = {
			bar_trackoffset = 6,
			bar_trackstrength = 5,
			bar_tracktype = "corwidetracks",
			bar_trackwidth = 22,
			arm_tank = "1",
			description_long = "Shellshocker is an artillery vehicle used to take down T1 defenses, especially High Laser Turrets. It can outrange all T1 defense towers except coastal defense plasma batteries. Shooting its plasma shells along a parabolic trajectory they are obviously helpless in close quarters combat.  Always keep them protected by Stumpies/Flashes, or your own defensive structures. Don't forget to have targets in your radar's range or scouted.",
			canareaattack = 1,
			--ANIMATION DATA
				--PIECENAMES HERE
					basename = "base",
					turretname = "turret",
					sleevename = "sleeve",
					cannon1name = "gun",
					flare1name = "flare",
					cannon2name = nil, --optional (replace with nil)
					flare2name = nil, --optional (replace with nil)
				--SFXs HERE
					driftratio = "0.2", --How likely will the unit drift when performing turns?
					rockstrength = "20", --Howmuch will its weapon make it rock ?
					rockspeed = "80", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					rockrestorespeed = "5", -- More datas about rock(honestly you can keep 2 and 1 as default here)
					cobkickbackrestorespeed = "13.25", --How fast will the cannon come back in position?
					kickback = "-6.25", --How much will the cannon kickback
				--AIMING HERE
					cobturretyspeed = "110", --turretSpeed as seen in COB script
					cobturretxspeed = "40", --turretSpeed as seen in COB script
					restoretime = "3000", --restore delay as seen in COB script
		},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "0.0 3.10058593911e-07 3.44650268555",
				collisionvolumescales = "30.6000061035 17.1577606201 39.1929931641",
				collisionvolumetype = "Box",
				damage = 418,
				description = "Shellshocker Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 24,
				hitdensity = 100,
				metal = 92,
				object = "armart_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 259,
				description = "Shellshocker Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 3,
				footprintz = 3,
				height = 4,
				hitdensity = 100,
				metal = 37,
				object = "3X3A",
                collisionvolumescales = "55.0 4.0 6.0",
                collisionvolumetype = "cylY",
				reclaimable = true,
				resurrectable = 0,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
		},
		sfxtypes = { 
 			pieceExplosionGenerators = { 
				"deathceg2",
				"deathceg3",
				"deathceg4",
			},
			explosiongenerators = {
				[1] = "custom:barrelshot-small",
			},
		},
		sounds = {
			canceldestruct = "cancel2",
			underattack = "warning1",
			cant = {
				[1] = "cantdo4",
			},
			count = {
				[1] = "count6",
				[2] = "count5",
				[3] = "count4",
				[4] = "count3",
				[5] = "count2",
				[6] = "count1",
			},
			ok = {
				[1] = "tarmmove",
			},
			select = {
				[1] = "tarmsel",
			},
		},
		weapondefs = {
			tawf113_weapon = {
				accuracy = 250,
				areaofeffect = 105,
				avoidfeature = false,
				craterareaofeffect = 105,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-small",
				gravityaffected = "true",
				hightrajectory = 1,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Long-range high-trajectory g2g plasma cannon",
				noselfdamage = true,
				range = 710,
				reloadtime = 2.85,
				soundhit = "TAWF113b",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "TAWF113a",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 370,
				damage = {
					bombers = 13,
					default = 130,
					fighters = 13,
					subs = 5,
					vtol = 13,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "VTOL",
				def = "TAWF113_WEAPON",
				maindir = "0 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
		},
	},
}
