-- UNITDEF -- ARMJAG --
--------------------------------------------------------------------------------

local unitName = "armjag"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.4,
	bmcode = 1,
	brakeRate = 0.22,
	buildCostEnergy = 236421,
	buildCostMetal = 19412,
	builder = false,
	buildPic = [[armjag.png]],
	buildTime = 286143,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionvolumeoffsets = [[0 -10 -5]],
	collisionvolumescales = [[56 84 47]],
	collisionvolumetest = 1,
	collisionvolumetype = [[Ell]],
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[All-Terrain Bantha Brother's]],
	designation = [[ARM-SK]],
	energyMake = 5,
	energyStorage = 0,
	energyUse = 46,
	explodeAs = [[BIG_UNIT]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	maneuverleashlength = 640,
	maxDamage = 66912,
	maxSlope = 103,
	maxVelocity = 1.3,
	maxWaterDepth = 112,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[HTKBOT4]],
	name = [[Jaguar]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMJAG]],
	radarDistance = 0,
	radarDistanceJam = 0,
	selfDestructAs = [[Nuclear_missile]],
	selfDestructCountdown = 10,
	shootme = 1,
	side = [[ARM]],
	sightDistance = 600,
	standingfireorder = 0,
	standingmoveorder = 1,
	steeringmode = 2,
	threed = 1,
	turnRate = 450,
	unitname = [[armjag]],
	unitnumber = 23174,
	upright = true,
	version = 1,
	workerTime = 0,
	zbuffer = 1,
	featureDefs = nil,
	sounds = {
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		cant = {
			[1] = [[cantdo4]],
		},
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		ok = {
			[1] = [[krogok1]],
		},
		select = {
			[1] = [[krogsel1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARMJAG_GAUSS]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[ARMJAG_HEAD]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			def = [[ARMJAG_MISS]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMJAG_GAUSS = {
		areaOfEffect = 100,
		ballistic = true,
		explosionart = [[explode2]],
		explosiongaf = [[fx]],
		gravityaffected = [[true]],
		id = 134,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		minbarrelangle = -35,
		name = [[Advanced Krogoth Plasma Shot]],
		range = 910,
		reloadtime = 0.8,
		renderType = 4,
		soundHitDry = [[xplomed2]],
		soundStart = [[cannhvy5]],
		startsmoke = 1,
		turret = true,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		weaponType = [[Cannon]],
		weaponVelocity = 350.49963378906,
		damage = {
			default = 490,
			subs = 5,
		},
	},
	ARMJAG_HEAD = {
		areaOfEffect = 15,
		beamWeapon = true,
		color = 233,
		color2 = 233,
		energypershot = 2212,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		fireStarter = 90,
		id = 129,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		name = [[Hyper Beam Weapon]],
		range = 972,
		reloadtime = 2.5,
		renderType = 0,
		soundHitDry = [[xplolrg1]],
		soundStart = [[annigun1]],
		tolerance = 500,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponType = [[LaserCannon]],
		weaponVelocity = 1057,
		damage = {
			default = 2643,
			subs = 5,
		},
	},
	ARMJAG_MISS = {
		areaOfEffect = 80,
		cegTag = [[ARMRAVENTRAIL]],
 		explosionart = [[explode3]],
		explosiongaf = [[fx]],
		fireStarter = 70,
		flightTime = 5,
		guidance = true,
		id = 137,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		metalpershot = 0,
		model = [[advmsl]],
		name = [[Advanced Krogoth Heavy Rockets]],
		range = 1127,
		reloadtime = 3,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = false,
		soundHitDry = [[xplosml2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		startVelocity = 250,
		Texture1 = [[null]],
		Texture2 = [[null]],
		Texture3 = [[null]],
		Texture4 = [[null]],
		tolerance = 9000,
		tracks = true,
		turnRate = 63000,
		vlaunch = true,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		weaponAcceleration = 200,
		weaponTimer = 1,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 550,
		damage = {
			default = 240,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[core_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 31,
		hitdensity = 105,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[macross_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 2,
		hitdensity = 105,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
