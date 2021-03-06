-- UNITDEF -- TLLGRIM --
--------------------------------------------------------------------------------

local unitName = "tllgrim"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.21,
	bmcode = 1,
	brakeRate = 0.15,
	buildCostEnergy = 200000,
	buildCostMetal = 22000,
	builder = false,
	buildTime = 222193,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionVolumeOffsets = [[0 -30 -2]],
	collisionVolumeScales = [[68 105 35]],
	collisionVolumeTest = 1,
	collisionVolumeType = [[ellipsoid]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Anti T3/T4 Sniper Kbot]],
	designation = [[TLL-GR]],
	downloadable = 1,
	energyMake = 0.4,
	energyStorage = 0,
	energyUse = 1.1,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	maneuverleashlength = 640,
	maxDamage = 11000,
	maxSlope = 20,
	maxVelocity = 0.8,
	maxWaterDepth = 12,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[VKBOT4]],
	name = [[Grim Reaper]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[TLLGRIM]],
	radarDistance = 0,
	selfDestructAs = [[NUCLEAR_MISSILE]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 690,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	turnRate = 1016,
	unitname = [[tllgrim]],
	unitnumber = 65200,
	upright = true,
	workerTime = 0,
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
			[1] = [[mavbok1]],
		},
		select = {
			[1] = [[mavbsel1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[TLLGRIM_GUN]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			badTargetCategory = [[VTOL]],
			def = [[TLLGRIM_MISSILE]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	TLLGRIM_GUN = {
		areaOfEffect = 75,
		energypershot = 4000,
		id = 224,
		impactonly = 1,
		impulseBoost = 0,
		impulseFactor = 0,
		intensity = 0.75,
		lineOfSight = true,
		minbarrelangle = -15,
		name = [[Grim Canon]],
		range = 1350,
		reloadtime = 8,
		renderType = 4,
		rgbColor = [[1 0.95 0.9]],
		size = 1.63,
		soundHitDry = [[XPLOSML1]],
		soundStart = [[canzipx]],
		startsmoke = 1,
		tolerance = 500,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 2200,
		damage = {
			commanders = 3000,
			default = 7500,
			experimental_land = 30000,
			experimental_ships = 30000,
			sniper_resistant = 7500,
			subs = 5,
		},
	},
	TLLGRIM_MISSILE = {
		areaOfEffect = 100,
		fireStarter = 100,
		flightTime = 10,
		guidance = true,
		id = 228,
		lineOfSight = true,
		metalpershot = 0,
		model = [[missile]],
		name = [[Wolf Missile]],
		noautorange = 1,
		range = 500,
		reloadtime = 3.1,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.0001,
		smokeTrail = true,
		soundHitDry = [[xplomed2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		tolerance = 20000,
		turnRate = 2438400,
		vlaunch = true,
		weaponAcceleration = 600,
		weaponTimer = 5,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 800,
		damage = {
			default = 350,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[tll_corpses]],
		damage = 0.8683 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 20,
		hitdensity = 100,
		metal = 0.8905 * unitDef.buildCostMetal,
		object = [[tllgrim_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.5210 * unitDef.maxDamage,
		description = [[Wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.7124 * unitDef.buildCostMetal,
		object = [[4x4d]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
