-- UNITDEF -- CORINT --
--------------------------------------------------------------------------------

local unitName = "corint"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	antiweapons = 1,
	badTargetCategory = [[MOBILE]],
	bmcode = 0,
	brakeRate = 0,
	buildAngle = 32700,
	buildCostEnergy = 62520,
	buildCostMetal = 4328,
	builder = false,
	buildPic = [[CORINT.png]],
	buildTime = 93237,
	canAttack = true,
	canstop = 1,
	category = [[CORE WEAPON NOTAIR NOTSUB NOTSHIP LEVEL3 NOTLAND ALL]],
	corpse = [[DEAD]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Long Range Plasma Cannon]],
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[ATOMIC_BLAST]],
	firestandorders = 2,
	footprintX = 5,
	footprintZ = 5,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 4600,
	maxSlope = 13,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[Intimidator]],
	objectName = [[CORINT]],
	seismicSignature = 0,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[CORE]],
	sightDistance = 273,
	smoothAnim = true,
	standingfireorder = 2,
	turnRate = 0,
	unitname = [[corint]],
	workerTime = 0,
	yardMap = [[ooooooooooooooooooooooooo]],
	customparams = {
		canareaattack = 1,
	},
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:berthaflare]],
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
			[1] = [[servlrg4]],
		},
		select = {
			[1] = [[servlrg4]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[MOBILE]],
			def = [[CORE_INTIMIDATOR2]],
			onlyTargetCategory = [[NOTAIR]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CORE_INTIMIDATOR2 = {
		accuracy = 535,
		aimrate = 2200,
		areaOfEffect = 224,
		ballistic = true,
		collideFriendly = false,
		craterBoost = 0.15,
		craterMult = 0.15,
		energypershot = 5000,
		explosionGenerator = [[custom:FLASHBIGBUILDING]],
		gravityaffected = [[true]],
		holdtime = 1,
		impulseBoost = 0.5,
		impulseFactor = 0.5,
		metalpershot = 10,
		name = [[IntimidatorCannon]],
		noSelfDamage = true,
		range = 6800,
		reloadtime = 7.5,
		renderType = 4,
		soundHit = [[xplonuk1]],
		soundStart = [[xplonuk3]],
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 958.12316894531,
		damage = {
			blackhydra = 3000,
			default = 1200,
			flakboats = 3000,
			jammerboats = 3000,
			l1subs = 5,
			l2subs = 5,
			l3subs = 5,
			otherboats = 3000,
			seadragon = 3000,
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
		object = [[CORINT_DEAD]],
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
