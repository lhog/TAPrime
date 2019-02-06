return {
	corflak = {
		acceleration = 0,
		airsightdistance = 1000,
		brakerate = 0,
		buildangle = 8192,
		buildcostenergy = 14000,
		buildcostmetal = 850,
		buildinggrounddecaldecayspeed = 30,
		buildinggrounddecalsizex = 4,
		buildinggrounddecalsizey = 4,
		buildinggrounddecaltype = "corflak_aoplane.dds",
		buildpic = "CORFLAK.DDS",
		buildtime = 20112,
		canrepeat = false,
		category = "ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 0 -5",
		collisionvolumescales = "28 34 28",
		collisionvolumetype = "CylY",
		corpse = "DEAD",
		description = "Anti-Air Flak Gun",
		explodeas = "smallBuildingExplosionGeneric",
		footprintx = 2,
		footprintz = 2,
		icontype = "building",
		idleautoheal = 5,
		idletime = 1800,
		maxdamage = 1655,
		maxslope = 10,
		maxwaterdepth = 0,
		name = "Cobra",
		nochasecategory = "ALL",
		objectname = "CORFLAK",
		seismicsignature = 0,
		selfdestructas = "smallBuildingExplosionGenericSelfd",
		sightdistance = 525,
		usebuildinggrounddecal = true,
		yardmap = "oooo",
		customparams = {
			removewait = true,
			prioritytarget = "air",
			},
		featuredefs = {
			dead = {
				blocking = true,
				category = "corpses",
				collisionvolumeoffsets = "2.3176574707 4.45434570313e-05 0.257888793945",
				collisionvolumescales = "37.281829834 27.9406890869 36.1777038574",
				collisionvolumetype = "Box",
				damage = 993,
				description = "Cobra Wreckage",
				energy = 0,
				featuredead = "HEAP",
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 20,
				hitdensity = 100,
				metal = 515,
				object = "CORFLAK_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 497,
				description = "Cobra Heap",
				energy = 0,
				featurereclamate = "SMUDGE01",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 206,
				object = "2X2D",
                collisionvolumescales = "35.0 4.0 6.0",
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
                "custom:barrelshot-medium-aa",
            },
		},
		sounds = {
			canceldestruct = "cancel2",
			cloak = "kloak1",
			uncloak = "kloak1un",
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
				[1] = "twrturn3",
			},
			select = {
				[1] = "twrturn3",
			},
		},
		weapondefs = {
			armflak_gun = {
				accuracy = 1000,
				areaofeffect = 192,
				avoidfeature = false,
				avoidfriendly = false,
				burnblow = true,
				canattackground = false,
				collidefriendly = false,
				craterareaofeffect = 192,
				craterboost = 0,
				cratermult = 0,
				cylindertargeting = 1,
				edgeeffectiveness = 0.85,
				explosiongenerator = "custom:flak",
				gravityaffected = "true",
				impulseboost = 0,
				impulsefactor = 0,
				mygravity = 0.01,
				name = "Heavy g2a flak cannon",
				size = 4.5,
				sizedecay = 0.08,
				stages = 8,
				noselfdamage = true,
				predictboost = 1,
				range = 775,
				reloadtime = 0.55,
				rgbcolor = {1, 0.33, 0.7},
				soundhit = "flakhit",
				soundhitwet = "splslrg",
				soundhitwetvolume = 0.5,
				soundstart = "flakfire",
				turret = true,
				weapontimer = 1,
				weapontype = "Cannon",
				weaponvelocity = 2450,
				damage = {
					bombers = 250,
					fighters = 500,
					vtol = 250,
				},
				customparams = {
                    light_radius_mult = 0.55,
                    light_mult = 0.8,
					light_color = "1 0.5 0.6",
					expl_light_color = "1 0.4 0.5",
					expl_light_radius_mult = 0.66,
					expl_light_mult = 0.4,
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "NOTAIR LIGHTAIRSCOUT",
				def = "ARMFLAK_GUN",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
