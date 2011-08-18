-- UNITDEF -- ARMAMB --
--------------------------------------------------------------------------------

local unitName = "armamb"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	badTargetCategory = [[VTOL]],
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 8192,
	buildCostEnergy = 16821,
	buildCostMetal = 2342,
	builder = false,
	buildingGroundDecalDecaySpeed = 30,
	buildingGroundDecalSizeX = 5,
	buildingGroundDecalSizeY = 5,
	buildingGroundDecalType = [[armamb_aoplane.dds]],
	buildPic = [[ARMAMB.png]],
	buildTime = 27072,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
	cloakCost = 40,
	corpse = [[DEAD]],
	damageModifier = 0.25,
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Cloakable Heavy Plasma Cannon]],
	digger = 1,
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	highTrajectory = 2,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	initCloaked = false,
	maxDamage = 3600,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	minCloakDistance = 70,
	name = [[Ambusher]],
	noAutoFire = false,
	noChaseCategory = [[MOBILE]],
	objectName = [[ARMAMB]],
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[ARM]],
	sightDistance = 442,
	smoothAnim = true,
	standingfireorder = 2,
	turnRate = 0,
	unitname = [[armamb]],
	useBuildingGroundDecal = true,
	workerTime = 0,
	yardMap = [[ooooooooo]],
	featureDefs = nil,
	sounds = {
		canceldestruct = [[cancel2]],
		cloak = [[kloak1]],
		uncloak = [[kloak1un]],
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
			[1] = [[twrturn3]],
		},
		select = {
			[1] = [[twrturn3]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[VTOL]],
			def = [[ARMAMB_GUN]],
			mainDir = [[0 1 0]],
			maxAngleDif = 230,
			onlyTargetCategory = [[NOTAIR]],
		},
		[2] = {
			def = [[ARMAMB_GUN_HIGH]],
			onlyTargetCategory = [[NOTAIR]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARMAMB_GUN = {
		accuracy = 400,
		areaOfEffect = 152,
		ballistic = true,
		craterBoost = 0,
		craterMult = 0,
		edgeEffectiveness = 0.25,
		explosionGenerator = [[custom:FLASH96]],
		gravityaffected = [[true]],
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		minbarrelangle = -35,
		name = [[PopupCannon]],
		noSelfDamage = true,
		predictBoost = 0.2,
		range = 1520,
		reloadtime = 1.8,
		renderType = 4,
		soundHit = [[xplomed2]],
		soundStart = [[cannhvy5]],
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 452.99005126953,
		damage = {
			blackhydra = 1142,
			default = 345,
			flakboats = 1142,
			gunships = 90,
			hgunships = 90,
			jammerboats = 1142,
			l1bombers = 90,
			l1fighters = 90,
			l1subs = 5,
			l2bombers = 90,
			l2fighters = 90,
			l2subs = 5,
			l3subs = 5,
			otherboats = 1142,
			seadragon = 1142,
			vradar = 90,
			vtol = 90,
			vtrans = 90,
		},
	},
	ARMAMB_GUN_HIGH = {
		accuracy = 400,
		areaOfEffect = 224,
		ballistic = true,
		craterBoost = 0.123,
		craterMult = 0.123,
		edgeEffectiveness = 0.5,
		explosionGenerator = [[custom:FLASH96]],
		gravityaffected = [[true]],
		impulseBoost = 0.123,
		impulseFactor = 2,
		minbarrelangle = -35,
		name = [[PopupCannon]],
		noSelfDamage = true,
		proximityPriority = -2,
		range = 1520,
		reloadtime = 7,
		renderType = 4,
		soundHit = [[xplomed2]],
		soundStart = [[cannhvy5]],
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 452.99005126953,
		damage = {
			blackhydra = 2256,
			commanders = 1504,
			default = 865,
			flakboats = 2256,
			gunships = 90,
			hgunships = 90,
			jammerboats = 2256,
			l1bombers = 90,
			l1fighters = 90,
			l1subs = 5,
			l2bombers = 90,
			l2fighters = 90,
			l2subs = 5,
			l3subs = 5,
			otherboats = 2256,
			seadragon = 2256,
			vradar = 90,
			vtol = 90,
			vtrans = 90,
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
		featureDead = [[DEAD2]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMAMB_DEAD1]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	DEAD2 = {
		blocking = true,
		category = [[corpses]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[ARMAMB_DEAD2]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.2160 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
		metal = 0.5120 * unitDef.buildCostMetal,
		object = [[3X3B]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
