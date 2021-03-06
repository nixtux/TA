-- UNITDEF -- ARMPW --
--------------------------------------------------------------------------------

local unitName = "armpw"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.36,
	bmcode = 1,
	brakeRate = 0.2,
	buildCostEnergy = 897,
	buildCostMetal = 45,
	builder = false,
	buildPic = [[ARMPW.png]],
	buildTime = 1420,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL TINY WEAPON]],
	collisionvolumescales = [[22 28 22]],
	collisionvolumeoffsets = [[0 -1 0]],
	collisionvolumetype = [[CylY]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Infantry Kbot]],
	energyMake = 0.3,
	energyStorage = 0,
	energyUse = 0.3,
	explodeAs = [[SMALL_UNITEX]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 640,
	maxDamage = 300,
	maxSlope = 17,
	maxVelocity = 2.8,
	maxWaterDepth = 12,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[KBOT2]],
	name = [[Peewee]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMPW]],
	seismicSignature = 0,
	selfDestructAs = [[SMALL_UNIT]],
	side = [[ARM]],
	sightDistance = 429,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	turnRate = 1056,
	unitname = [[armpw]],
	unitRestricted = 125,
	upright = true,
	workerTime = 0,
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:pw_muzzle]],
		},
        },
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
			[1] = [[servtny2]],
		},
		select = {
			[1] = [[servtny2]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[EMG]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	EMG = {
		areaOfEffect = 8,
		avoidFeature = false,
		burst = 3,
		burstrate = 0.1,
		cegTag = [[Trail_emg]],
		craterBoost = 0,
		craterMult = 0,
		endsmoke = 0,
		explosionGenerator = [[custom:EMG_HIT]],
		fireStarter = 100,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		intensity = 0.7,
		lineOfSight = true,
		name = [[peewee]],
		noSelfDamage = true,
		range = 180,
		reloadtime = 0.31,
		renderType = 4,
		rgbColor = [[0.83 0.57 0]],
		size = 1.75,
		soundStart = [[flashemg]],
		sprayAngle = 1180,
		startsmoke = 0,
		tolerance = 5000,
		turret = true,
		weaponTimer = 0.1,
		weaponType = [[Cannon]],
		weaponVelocity = 500,
		damage = {
			default = 11,
			raider_resistant = 5.5,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = false,
		category = [[corpses]],
		collisionvolumeoffsets = [[0.979118347168 -0.453806965332 -0.796119689941]],
		collisionvolumescales = [[30.1392364502 18.4953460693 29.797164917]],
		collisionvolumetype = [[Box]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 40,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMPW_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[2X2F]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
