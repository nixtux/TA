-- UNITDEF -- CORSILO --
--------------------------------------------------------------------------------

local unitName = "corsilo"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	antiweapons = 1,
	badTargetCategory = [[MOBILE]],
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 8192,
	buildCostEnergy = 77536,
	buildCostMetal = 7187,
	builder = false,
	buildPic = [[CORSILO.png]],
	buildTime = 181243,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
	corpse = [[DEAD]],
	description = [[Nuclear ICBM Launcher]],
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[ATOMIC_BLAST]],
	firestandorders = 1,
	footprintX = 7,
	footprintZ = 7,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 5560,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[Silencer]],
	noAutoFire = false,
	objectName = [[CORSILO]],
	radarDistance = 50,
	seismicSignature = 0,
	selfDestructAs = [[NUCLEAR_MISSILE]],
	side = [[CORE]],
	sightDistance = 455,
	smoothAnim = true,
	standingfireorder = 0,
	turnRate = 0,
	unitname = [[corsilo]],
	workerTime = 0,
	yardMap = [[ooooooooooooooooooooooooooooooooooooooooooooooooo]],
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
			[1] = [[servroc1]],
		},
		select = {
			[1] = [[servroc1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[MOBILE]],
			def = [[CRBLMSSL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CRBLMSSL = {
		areaOfEffect = 1920,
		avoidFriendly = false,
		collideFriendly = false,
		commandfire = true,
		craterBoost = 6,
		craterMult = 3,
		cruise = 1,
		edgeEffectiveness = 0.3,
		energypershot = 187500,
		explosionGenerator = [[custom:FLASHNUKE1920]],
		fireStarter = 0,
		flightTime = 400,
		guidance = true,
		impulseBoost = 0.5,
		impulseFactor = 2.5,
		lineOfSight = true,
		metalpershot = 1500,
		model = [[crblmssl]],
		name = [[CoreNuclearMissile]],
		noautorange = 1,
		propeller = 1,
		range = 72000,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		shakeduration = 3,
		shakemagnitude = 50,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHit = [[xplomed4]],
		soundStart = [[misicbm1]],
		startsmoke = 1,
		stockpile = true,
		stockpiletime = 120,
		targetable = 1,
		tolerance = 4000,
		turnRate = 32768,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 100,
		weaponTimer = 7,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 1600,
		damage = {
			commanders = 2500,
			default = 11500,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORSILO_DEAD]],
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
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3X3A]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
