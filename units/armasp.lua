-- UNITDEF -- ARMASP --
--------------------------------------------------------------------------------

local unitName = "armasp"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 0,
	buildCostEnergy = 4578,
	buildCostMetal = 609,
	buildDistance = 6,
	builder = true,
	buildingGroundDecalDecaySpeed = 30,
	buildingGroundDecalSizeX = 12,
	buildingGroundDecalSizeY = 12,
	buildingGroundDecalType = [[armasp_aoplane.dds]],
	buildPic = [[ARMASP.png]],
	buildTime = 19090,
	category = [[ALL NOTLAND NOTSUB NOWEAPON NOTSHIP NOTAIR]],
	corpse = [[DEAD]],
	description = [[Automatically Repairs Aircraft]],
	energyMake = 40,
	energyStorage = 250,
	energyUse = 0,
	explodeAs = [[LARGE_BUILDINGEX]],
	footprintX = 9,
	footprintZ = 9,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	isAirBase = true,
	mass = 200000,
	maxDamage = 1860,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 1,
	metalStorage = 0,
	name = [[Air Repair Pad]],
	noAutoFire = false,
	objectName = [[ARMASP]],
	onoffable = true,
	seismicSignature = 0,
	selfDestructAs = [[LARGE_BUILDING]],
	side = [[ARM]],
	sightDistance = 357.5,
	smoothAnim = true,
	sortbias = 0,
	turnRate = 0,
	unitname = [[armasp]],
	useBuildingGroundDecal = true,
	workerTime = 20000,
	yardMap = [[ooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo]],
	featureDefs = nil,
	sounds = {
		build = [[pairwork]],
		canceldestruct = [[cancel2]],
		underattack = [[warning1]],
		unitcomplete = [[untdone]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		select = {
			[1] = [[pairactv]],
		},
	},
}

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
		footprintX = 4,
		footprintZ = 4,
		height = 40,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMASP_DEAD]],
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
		footprintX = 1,
		footprintZ = 1,
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
