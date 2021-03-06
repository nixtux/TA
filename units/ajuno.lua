-- UNITDEF -- AJUNO --
--------------------------------------------------------------------------------

local unitName = "ajuno"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	bmcode = 0,
	brakeRate = 0,
	buildCostEnergy = 16581,
	buildCostMetal = 597,
	builder = false,
	buildingGroundDecalDecaySpeed = 30,
	buildingGroundDecalSizeX = 6,
	buildingGroundDecalSizeY = 6,
	buildingGroundDecalType = [[ajuno_aoplane.dds]],
	buildPic = [[AJUNO.png]],
	buildTime = 21833,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionVolumeScales = [[59.9 119.9 59.9]],
	collisionVolumeOffsets = [[0 -10 0]],
	collisionVolumeTest = 1,
	collisionVolumeType = [[ellipsoid]],
	corpse = [[DEAD]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Anti Minefield Weapon]],
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[ESTOR_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 2120,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[Arm Juno]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[AJUNO]],
	seismicSignature = 0,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[ARM]],
	sightDistance = 494,
	standingfireorder = 2,
	stealth = true,
	turnRate = 0,
	unitname = [[ajuno]],
	useBuildingGroundDecal = true,
	workerTime = 0,
	yardMap = [[oooooooooooooooo]],
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
			[1] = [[drone1]],
		},
		select = {
			[1] = [[drone1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[JUNO_PULSE]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	JUNO_PULSE = {
		areaOfEffect = 1400,
		commandfire = true,
		craterBoost = 0,
		craterMult = 0,
		cruise = 1,
		edgeEffectiveness = 1,
		energypershot = 16000,
		explosionGenerator = [[custom:FLASHJUNO]],
		flightTime = 400,
		guidance = true,
		impulseBoost = 0,
		impulseFactor = 0,
		lineOfSight = true,
		metalpershot = 0,
		model = [[epulse]],
		name = [[AntiSignal]],
		noautorange = 1,
		range = 32000,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = true,
		soundHitDry = [[junohit2]],
		soundStart = [[junofir2]],
		startsmoke = 1,
		stockpile = true,
		stockpiletime = 75,
		targetable = 0,
		tolerance = 4000,
		turnRate = 24384,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 80,
		weaponTimer = 5,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 500,
		damage = {
			commanders = 1,
			default = 1,
			mines = 1000,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[corpses]],
		collisionvolumeoffsets = [[1.02378845215 -0.244132250977 6.86585998535]],
		collisionvolumescales = [[65.8518981934 75.545135498 65.7558898926]],
		collisionvolumetype = [[Box]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 4,
		footprintZ = 4,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[AJUNO_DEAD]],
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
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4X4A]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
