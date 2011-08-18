-- UNITDEF -- ARMBEAVER --
--------------------------------------------------------------------------------

local unitName = "armbeaver"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.0132,
	bmcode = 1,
	brakeRate = 0.1166,
	buildCostEnergy = 2928,
	buildCostMetal = 141,
	buildDistance = 170,
	builder = true,
	buildPic = [[ARMBEAVER.png]],
	buildTime = 6708,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ALL TANK NOTSUB NOWEAPON NOTAIR]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Amphibious Construction Vehicle]],
	energyMake = 8,
	energyStorage = 0,
	energyUse = 8,
	explodeAs = [[BIG_UNITEX]],
	footprintX = 3,
	footprintZ = 3,
	idleAutoHeal = 5,
	idleTime = 1800,
	leaveTracks = true,
	maneuverleashlength = 640,
	maxDamage = 925,
	maxSlope = 16,
	maxVelocity = 1.49,
	maxWaterDepth = 255,
	metalMake = 0.08,
	metalStorage = 50,
	mobilestandorders = 1,
	movementClass = [[ATANK3]],
	name = [[Beaver]],
	noAutoFire = false,
	objectName = [[ARMBEAVER]],
	seismicSignature = 0,
	selfDestructAs = [[BIG_UNIT]],
	side = [[arm]],
	sightDistance = 266,
	smoothAnim = true,
	standingmoveorder = 1,
	steeringmode = 1,
	terraformSpeed = 240,
	trackOffset = 0,
	trackStrength = 5,
	trackStretch = 1,
	trackType = [[StdTank]],
	trackWidth = 31,
	turnRate = 311,
	unitname = [[armbeaver]],
	workerTime = 120,
	buildoptions = {
		[1] = [[armsolar]],
		[2] = [[armadvsol]],
		[3] = [[armwin]],
		[4] = [[armgeo]],
		[5] = [[armmstor]],
		[6] = [[armestor]],
		[7] = [[armmex]],
		[8] = [[armamex]],
		[9] = [[armmakr]],
		[10] = [[armfhp]],
		[11] = [[armlab]],
		[12] = [[armvp]],
		[13] = [[armap]],
		[14] = [[armsy]],
		[15] = [[armhp]],
		[16] = [[armnanotc]],
		[17] = [[armeyes]],
		[18] = [[armrad]],
		[19] = [[armdrag]],
		[20] = [[armclaw]],
		[21] = [[armllt]],
		[22] = [[tawf001]],
		[23] = [[armhlt]],
		[24] = [[armguard]],
		[25] = [[armrl]],
		[26] = [[packo]],
		[27] = [[armcir]],
		[28] = [[armdl]],
		[29] = [[armjamt]],
		[30] = [[armtide]],
		[31] = [[armuwmex]],
		[32] = [[armfmkr]],
		[33] = [[armuwms]],
		[34] = [[armuwes]],
		[35] = [[asubpen]],
		[36] = [[armsonar]],
		[37] = [[armfdrag]],
		[38] = [[armfrad]],
		[39] = [[armfhlt]],
		[40] = [[armfrt]],
		[41] = [[armtl]],
		[42] = [[ajuno]],
	},
	featureDefs = nil,
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		repair = [[repair1]],
		underattack = [[warning1]],
		working = [[reclaim1]],
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
			[1] = [[varmmove]],
		},
		select = {
			[1] = [[varmsel]],
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
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMBEAVER_DEAD]],
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
		object = [[3X3C]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
