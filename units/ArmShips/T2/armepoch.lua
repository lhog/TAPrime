return {
	armepoch = {
		activatewhenbuilt = true,
		buildangle = 16384,
		buildcostenergy = 158000,
		buildcostmetal = 17000,
		buildpic = "ARMEPOCH.DDS",
		buildtime = 169800,
		canmove = true,
		category = "ALL WEAPON NOTSUB SHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -6 3",
		collisionvolumescales = "71 71 162",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Flagship",
		energymake = 150,
		energystorage = 1000,
		energyuse = 150,
		explodeas = "flagshipExplosion",
		floater = true,
		footprintx = 8,
		footprintz = 8,
		icontype = "sea",
		idleautoheal = 25,
		idletime = 1800,
		losemitheight = 52,
		maxdamage = 44800,
		metalstorage = 100,
		minwaterdepth = 15,
		movementclass = "DBOAT68X8",
		name = "Epoch",
		objectname = "ARMEPOCH",
		pushresistant = true,
		radardistance = 1530,
		radaremitheight = 52,
		seismicsignature = 0,
		selfdestructas = "flagshipExplosionSelfd",
		sightdistance = 689,
		waterline = 0,
		--move
		acceleration = 0.012,
		brakerate = 0.051,
		maxvelocity = 1.795,
		turninplace = true,
		turninplaceanglelimit = 110,
		turnrate = 90,
		--end move
		customparams = {
			techlevel = 2,
			paralyzemultiplier = 0,
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.439918518066 -4.07348632798e-05 0.367340087891",
				collisionvolumescales = "75.0081939697 51.5621185303 178.425750732",
				collisionvolumetype = "Box",
				damage = 42750,
				description = "Epoch Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 6,
				footprintz = 18,
				height = 4,
				hitdensity = 100,
				metal = 0.8*20879,
				object = "ARMEPOCH_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 20016,
				description = "Epoch Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*5066,
				object = "6X6A",
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
				"custom:barrelshot-medium",
				"custom:barrelshot-large",
                "custom:barrelshot-medium-aa",
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
				[1] = "sharmmov",
			},
			select = {
				[1] = "sharmsel",
			},
		},
		weapondefs = {
			mediumplasma = {
				accuracy = 350,
				areaofeffect = 128,
				avoidfeature = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-medium",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Secondary rapid-fire heavy plasma cannon",
				noselfdamage = true,
				range = 830,
				reloadtime = 1.2,
				soundhit = "xplomed2",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				tolerance = 5000,
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 570,
				damage = {
					bombers = 65,
					default = 270,
					fighters = 65,
					subs = 5,
					vtol = 65,
				},
			},
			flak = {
				accuracy = 1000,
				areaofeffect = 128,
				avoidfeature = false,
				burnblow = true,
				canattackground = false,
				craterareaofeffect = 128,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:genericshellexplosion-large-air",
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				name = "Heavy g2a flak cannon",
				size = 4.5,
				sizedecay = 0.08,
				stages = 8,
				noselfdamage = true,
				range = 775,
				reloadtime = 0.55,
				rgbcolor = {1, 0.33, 0.7},
				soundhit = "flakhit",
				soundhitwet = "splsmed",
				soundhitwetvolume = 0.5,
				soundstart = "flakfire",
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 1550,
				damage = {
					bombers = 250,
					fighters = 250,
					vtol = 250,
				},
                customparams = {
                    light_radius_mult = 0.55,
                    light_mult = 0.8,
                    light_color = "1 0.5 0.6",
                    expl_light_color = "1 0.4 0.5",
                },
			},
			heavyplasma = {
				accuracy = 800,
				areaofeffect = 64,
				avoidfeature = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				explosiongenerator = "custom:genericshellexplosion-large",
				gravityaffected = "true",
				impulseboost = 0.123,
				impulsefactor = 0.123,
				name = "Primary rapid-fire heavy long-range plasma cannon",
				noselfdamage = true,
				range = 2450,
				reloadtime = 0.53,
				soundhit = "xplomed2",
				soundhitwet = "splssml",
				soundhitwetvolume = 0.5,
				soundstart = "cannhvy1",
				turret = true,
				weapontype = "Cannon",
				weaponvelocity = 600,
				damage = {
					bombers = 65,
					default = 145,
					fighters = 65,
					subs = 5,
					vtol = 65,
				},
			},
		},
		weapons = {
			[1] = {
				def = "HEAVYPLASMA",
				onlytargetcategory = "SURFACE",
			},
			[2] = {
				def = "MEDIUMPLASMA",
				maindir = "0 0 1",
				maxangledif = 320,
				onlytargetcategory = "SURFACE",
			},
			[3] = {
				def = "HEAVYPLASMA",
				maindir = "0 0 1",
				maxangledif = 240,
				onlytargetcategory = "SURFACE",
			},
			[4] = {
				def = "MEDIUMPLASMA",
				maindir = "-4 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
			[5] = {
				def = "MEDIUMPLASMA",
				maindir = "4 0 1",
				maxangledif = 180,
				onlytargetcategory = "SURFACE",
			},
			-- [6] = {
				-- def = "FLAK",
				-- maindir = "1 0 0",
				-- maxangledif = 200,
				-- onlytargetcategory = "VTOL",
			-- },
			-- [7] = {
				-- def = "FLAK",
				-- maindir = "-1 0 0",
				-- maxangledif = 200,
				-- onlytargetcategory = "VTOL",
			-- },
		},
	},
}
