-- UNITDEF -- ARMBULL2 --
--------------------------------------------------------------------------------

local unitName = "armbull2"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.2,
	badTargetCategory = [[WATER]],
	bmcode = 1,
	brakeRate = 0.3,
	buildCostEnergy = 18541,
	buildCostMetal = 1540,
	builder = false,
	buildTime = 16842,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Very Heavy Assault Tank]],
	designation = [[ARM-HA9]],
	energyMake = 0.5,
	energyStorage = 0,
	energyUse = 0.5,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	frenchdescription = [[Char d'assaut tr�s lourd amphibie]],
	frenchname = [[Pittbull �volu�]],
	germandescription = [[�berschwerer Amphibischer Angriffspanzer]],
	germanname = [[Pittbull �volu�]],
	maneuverleashlength = 640,
	maxDamage = 10400,
	maxSlope = 12,
	maxVelocity = 1.6,
	maxWaterDepth = 16,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[HTANK3]],
	name = [[Pittbull]],
	noAutoFire = false,
	noChaseCategory = [[WATER]],
	objectName = [[ARMBULL2]],
	radarDistance = 0,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 240,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 350,
	unitname = [[armbull2]],
	unitnumber = 229,
	version = 3,
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
			[1] = [[tarmmove]],
		},
		select = {
			[1] = [[tarmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[WATER]],
			def = [[ARM_BULL2]],
			onlyTargetCategory = [[NOTAIR]],
		},
		[2] = {
			def = [[ARMROGUE_CANNON]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARM_BULL2 = {
		areaOfEffect = 98,
		ballistic = true,
		craterBoost = 0,
		craterMult = 0,
		explosionart = [[explode3]],
		explosiongaf = [[fx]],
		explosionGenerator = [[custom:MPLASMA]],
		gravityaffected = [[true]],
		id = 56,
		impulseBoost = 0,
		impulseFactor = 0,
		intensity = 1,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		name = [[Plasma Cannon]],
		range = 480,
		reloadtime = 0.7,
		renderType = 4,
		rgbColor = [[0 1 0]],
		rgbColor2 = [[1 1 1]],
		size = 4,
		soundHit = [[xplomed21]],
		soundStart = [[cannon3]],
		startsmoke = 1,
		thickness = 2,
		turret = true,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		weaponType = [[Cannon]],
		weaponVelocity = 310,
		damage = {
			default = 325,
		},
	},
	ARMROGUE_CANNON = {
		areaOfEffect = 8,
		burst = 3,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		id = 243,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		model = [[bullet4]],
		name = [[Rogue Gatling Cannon]],
		range = 350,
		reloadtime = 0.15,
		renderType = 1,
		soundHit = [[gatlhit]],
		soundStart = [[gungatl]],
		soundTrigger = true,
		sprayAngle = 1024,
		startsmoke = 1,
		tolerance = 6000,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponTimer = 1,
		weaponType = [[Cannon]],
		weaponVelocity = 550,
		damage = {
			commanders = 2,
			default = 12,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[arm_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[PitBull Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[armbull2_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[PitBull Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3c]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
