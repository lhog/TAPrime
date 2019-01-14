return {
	chickenp1 = {
		acceleration = 1,
		activatewhenbuilt = true,
		autoheal = 27,
		bmcode = "1",
		brakerate = 0.6,
		buildcostenergy = 6000,
		buildcostmetal = 200,
		builder = false,
		buildpic = "chickens/chickenp1.dds",
		buildtime = 5000,
		canguard = true,
		canmove = true,
		canpatrol = true,
		canstop = "1",
		category = "KBOT MOBILE WEAPON ALL NOTSUB NOTSHIP NOTAIR NOTHOVER SURFACE CHICKEN",
		collisionvolumeoffsets = "0 2 0",
		collisionvolumescales = "30 38 60",
		collisionvolumetype = "box",
		defaultmissiontype = "Standby",
		description = "Chicken Flamer",
		explodeas = "FLAMEBUG_DEATH",
		footprintx = 3,
		footprintz = 3,
		leavetracks = true,
		maneuverleashlength = "640",
		mass = 1800,
		maxdamage = 2700,
		maxvelocity = 3,
		movementclass = "CHICKENHKBOT3",
		name = "Bombardier",
		noautofire = false,
		nochasecategory = "VTOL",
		objectname = "ChickenDefenseModels/chicken_listener.s3o",
		script = "ChickenDefenseScripts/chickenp1.cob",
		seismicsignature = 0,
		selfdestructas = "FLAMEBUG_DEATH",
		side = "THUNDERBIRDS",
		sightdistance = 300,
		smoothanim = true,
		steeringmode = "2",
		tedclass = "KBOT",
		trackoffset = 0,
		trackstrength = 3,
		trackstretch = 1,
		tracktype = "ChickenTrack",
		trackwidth = 50,
		turninplace = true,
		turnrate = 1600,
		unitname = "chickenp1",
		upright = false,
		workertime = 0,
		customparams = {
			maxrange = "200",
			subfolder = "other/chickens/",
		},
		featuredefs = {
			dead = {},
			heap = {},
		},
		sfxtypes = {
			explosiongenerators = {
				[1] = "custom:blood_spray",
				[2] = "custom:blood_explode",
				[3] = "custom:dirt",
			},
		},
		weapondefs = {
			chaseweapon = {
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:chickenspike-large-sparks-burn",
				impulseboost = 0,
				impulsefactor = 0,
				interceptedbyshieldtype = 4,
				name = "Claws",
				noselfdamage = true,
				proximitypriority = -4,
				range = 200,
				reloadtime = 30,
				size = 0.00001,
				targetborder = 1,
				tolerance = 5000,
				turret = "true",
				weapontype = "Cannon",
				weaponvelocity = 500,
				damage = {
					default = 0.001,
					hvyboats = 0.001,
				},
			},
			flamer = {
				areaofeffect = 64,
				avoidfeature = 0,
				avoidfriendly = 0,
				burst = 12,
				burstrate = 0.01,
				colormap = "1 0.95 0.82 0.03   0.7 0.4 0.25 0.027   0.44 0.25 0.15 0.024   0.033 0.018 0.011 0.02   0.0 0.0 0.0 0.01",
				craterboost = 0,
				cratermult = 0,
				edgeeffectiveness = 0.15,
				explosiongenerator = "custom:burnblack",
				firestarter = 100,
				flamegfxtime = 1,
				groundbounce = false,
				impulseboost = 0,
				impulsefactor = 0,
				intensity = 0.65,
				name = "FlameThrower",
				noselfdamage = true,
				proximitypriority = 4,
				range = 410,
				reloadtime = 0.7,
				rgbcolor = "1 0.94 0.88",
				rgbcolor2 = "0.9 0.83 0.77",
				sizegrowth = 0.7,
				soundstart = "chickens/Flamhvy1",
				soundtrigger = 0,
				sprayangle = 100,
				targetborder = 0.75,
				targetmoveerror = 0.001,
				tolerance = 2500,
				turret = "true",
				weapontimer = 1,
				weapontype = "Flame",
				weaponvelocity = 300,
				customparams = {
					expl_light_color = "1 0.33 0.04",
					expl_light_life_mult = 1.1,
					expl_light_radius_mult = 1.15,
					light_color = "1 0.5 0.05",
				},
				damage = {
					default = 32,
					hvyboats = 32,
				},
			},
		},
		weapons = {
			[1] = {
				def = "CHASEWEAPON",
				maindir = "0 0 1",
				onlytargetcategory = "NOTAIR",
			},
			[2] = {
				badtargetcategory = "VTOL",
				def = "FLAMER",
				maindir = "0 0 1",
				maxangledif = 180,
			},
		},
	},
}