return {
	armpt = {
		airsightdistance = 800,
		activatewhenbuilt = true,
		autoheal = 1.5,
		buildcostenergy = 700,
		buildcostmetal = 65,
		buildpic = "ARMPT.DDS",
		buildtime = 1460,
		canmove = true,
		category = "ALL NOTLAND MOBILE WEAPON NOTSUB SHIP NOTAIR SURFACE",
		collisionvolumeoffsets = "0 -6 0",
		collisionvolumescales = "21 21 63",
		collisionvolumetype = "CylZ",
		corpse = "DEAD",
		description = "Patrol Boat/Light Anti Air/Sonar",
		energymake = 0.2,
		energyuse = 0.2,
		explodeas = "mediumExplosionGeneric",
		floater = true,
		footprintx = 2,
		footprintz = 2,
		icontype = "sea",
		idleautoheal = 5,
		idletime = 900,
		maxdamage = 120,
		minwaterdepth = 6,
		movementclass = "BOAT42X2",
		name = "Skeeter",
		nochasecategory = "VTOL",
		objectname = "ARMPT",
		seismicsignature = 0,
		selfdestructas = "mediumExplosionGenericSelfd",
		sightdistance = 700,
		sonardistance = 320,
		waterline = 0,
		--move
		acceleration = 0.133,
		brakerate = 0.266,
		maxvelocity = 4.00,
		turninplace = true,
		turninplaceanglelimit = 140,
		turnrate = 360,
		--end move
		customparams = {
			maxrange = "260",
			paralyzemultiplier = 0.1,
			prioritytarget = "air",		
		},
		featuredefs = {
			dead = {
				blocking = false,
				category = "corpses",
				collisionvolumeoffsets = "0.255500793457 0.0 -1.26264953613",
				collisionvolumescales = "20.0704803467 16.0 67.0992736816",
				collisionvolumetype = "Box",
				damage = 250,
				description = "Skeeter Wreckage",
				energy = 0.8*0,
				featuredead = "HEAP",
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*43,
				object = "ARMPT_DEAD",
				reclaimable = true,
				seqnamereclamate = "TREE1RECLAMATE",
				world = "All Worlds",
			},
			heap = {
				blocking = false,
				category = "heaps",
				damage = 516,
				description = "Skeeter Heap",
				energy = 0.8*0,
				footprintx = 2,
				footprintz = 2,
				height = 4,
				hitdensity = 100,
				metal = 0.8*21,
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
			laser = {
				areaofeffect = 8,
				avoidfeature = false,
				beamtime = 0.1,
				corethickness = 0.1,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				duration = 0.02,
				energypershot = 3,
				explosiongenerator = "custom:laserhit-small-yellow",
				firestarter = 50,
				impactonly = 1,
				impulseboost = 0,
				impulsefactor = 0,
				laserflaresize = 3,
				name = "Light close-quarters laser",
				noselfdamage = true,
				range = 260,
				reloadtime = 0.6,
				rgbcolor = "1 1 0",
				soundhitdry = "",
				soundhitwet = "sizzle",
				soundhitwetvolume = 0.5,
				soundstart = "lasrfir1",
				soundtrigger = 1,
				targetmoveerror = 0.2,
				thickness = 1,
				tolerance = 10000,
				turret = true,
				weapontype = "BeamLaser",
				weaponvelocity = 750,
				damage = {
					bombers = 9,
					default = 24,
					fighters = 9,
					subs = 2,
					vtol = 9,
				},
			},
			aamissile = {
				areaofeffect = 48,
				avoidfeature = false,
				canattackground = false,
				craterareaofeffect = 0,
				craterboost = 0,
				cratermult = 0,
				cegTag = "missiletrailaa",
				explosiongenerator = "custom:genericshellexplosion-small-air",
				firestarter = 70,
				flighttime = 1.75,
				impulseboost = 0.123,
				impulsefactor = 0.123,
				metalpershot = 0,
				model = "missile",
				name = "Light g2a missile launcher",
				noselfdamage = true,
				range = 700,
				reloadtime = 2,
				smoketrail = false,
				soundhit = "xplosml2",
				soundhitwet = "splshbig",
				soundhitwetvolume = 0.5,
				soundstart = "rocklit1",
				startvelocity = 250,
				texture1 = "trans",
				texture2 = "armsmoketrail",
				tolerance = 9000,
				tracks = true,
				turnrate = 63000,
				turret = true,
				weaponacceleration = 250,
				weapontimer = 5,
				weapontype = "MissileLauncher",
				weaponvelocity = 950,
				damage = {
					bombers = 60,
					fighters = 60,
					vtol = 60,
				},
				customparams = {
					bar_model = "cormissile.s3o",
					light_skip = true,		-- used by light_effects widget
                    light_color = "1 0.5 0.6",
                    expl_light_color = "1 0.4 0.5",
				},
			},
		},
		weapons = {
			[1] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "LASER",
				onlytargetcategory = "NOTSUB",
			},
			[3] = {
				badtargetcategory = "LIGHTAIRSCOUT",
				def = "AAMISSILE",
				onlytargetcategory = "VTOL",
			},
		},
	},
}
