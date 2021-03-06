-- UNITDEF -- ARMMLSPD --
--------------------------------------------------------------------------------

local unitName = "armmlspd"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.15,
	ai_limit = [[limit ARMmlSPD 2]],
	ai_weight = [[weight ARMmlSPD 0]],
	bmcode = 1,
	brakeRate = 0.15,
	buildCostEnergy = 1389,
	buildCostMetal = 152,
	buildDistance = 117,
	builder = true,
	buildTime = 1865,
	canAttack = false,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 0,
	canstop = 1,
	category = [[ALL CONSTR MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL NOTWEAPON SMALL]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[Tech level 1]],
	designation = [[ARM-MLSPD]],
	energyMake = 1,
	energyStorage = 0,
	energyUse = 0.9,
	explodeAs = [[BIG_UNITEX]],
	footprintX = 3,
	footprintZ = 3,
	maneuverleashlength = 640,
	maxDamage = 906,
	maxVelocity = 1.23,
	maxWaterDepth = 10,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[TKBOT3]],
	name = [[All-Terrain Construction Kbot]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMMLSPD]],
	radarDistance = 50,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 165,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 1020,
	unitname = [[armmlspd]],
	unitnumber = 4339,
	workerTime = 110,
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
		[10] = [[armlab]],
		[11] = [[armvp]],
		[12] = [[armap]],
		[13] = [[armsy]],
		[14] = [[armhp]],
		[15] = [[spiderlab]],
		[16] = [[armnanotc]],
		[17] = [[armeyes]],
		[18] = [[armrad]],
		[19] = [[armdrag]],
		[20] = [[armclaw]],
		[21] = [[armllt]],
		[22] = [[tawf001]],
		[23] = [[armhlt]],
		[24] = [[aspdbunk]],
		[25] = [[armguard]],
		[26] = [[armrl]],
		[27] = [[packo]],
		[28] = [[armcir]],
		[29] = [[armdl]],
		[30] = [[armjamt]],
		[31] = [[ajuno]],
		[32] = [[amortor]],
		[33] = [[armrech3]],
	},
	featureDefs = nil,
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		capture = [[capture1]],
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
			[1] = [[spider2]],
		},
		select = {
			[1] = [[spiderse]],
		},
	},
}

--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[arm_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[All-Terrain Construction Kbot Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 40,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[ARMMLSPD_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[All-Terrain Construction Kbot Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 4,
		hitdensity = 100,
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
