-- UNITDEF -- TLLRADARNS --
--------------------------------------------------------------------------------

local unitName = "tllradarns"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	activateWhenBuilt = true,
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 16384,
	buildCostEnergy = 554,
	buildCostMetal = 97,
	builder = false,
	buildPic = [[TLLRADARNS.png]],
	buildTime = 1500,
	canAttack = false,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON]],
	collisionSphereOffset = [[0 40 0]],
	collisionSphereScale = 1.1,
	corpse = [[DEAD]],
	description = [[Early Warning System]],
	energyMake = 4,
	energyStorage = 0,
	energyUse = 4,
	explodeAs = [[SMALL_BUILDINGEX]],
	footprintX = 3,
	footprintZ = 3,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxangledif1 = 1,
	maxDamage = 103,
	maxSlope = 10,
	maxVelocity = 0,
	metalStorage = 0,
	minWaterDepth = 5,
	name = [[Floating Radar Tower]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[TLLRADARNS]],
	onoffable = true,
	radarDistance = 2000,
	script = [[tllradarns.lua]],
	seismicSignature = 0,
	selfDestructAs = [[SMALL_BUILDING]],
	side = [[CORE]],
	sightDistance = 740,
	turnRate = 0,
	unitname = [[tllradarns]],
	waterline = 0,
	workerTime = 0,
	yardMap = [[wwwwwwwww]],
	featureDefs = nil,
	sounds = {
		activate = [[radar1]],
		canceldestruct = [[cancel2]],
		deactivate = [[radarde1]],
		underattack = [[warning1]],
		working = [[radar2]],
		count = {
			[1] = [[count6]],
			[2] = [[count5]],
			[3] = [[count4]],
			[4] = [[count3]],
			[5] = [[count2]],
			[6] = [[count1]],
		},
		select = {
			[1] = [[radar2]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = false,
		category = [[corpses]],
		collisionvolumeoffsets = [[-1.90951538086 -2.08381778564 1.08252716064]],
		collisionvolumescales = [[41.2277526855 50.2841644287 42.4677886963]],
		collisionvolumetype = [[Box]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[TLLRADARNS_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
