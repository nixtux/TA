-- UNITDEF -- CORTHUD1 --
--------------------------------------------------------------------------------

local unitName = "corthud1"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.113,
	bmcode = 1,
	brakeRate = 0.225,
	buildCostEnergy = 1961,
	buildCostMetal = 272,
	builder = false,
	buildPic = [[CORTHUD1.png]],
	buildTime = 2571,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionvolumescales = [[25 27 25]],
	collisionvolumeoffsets = [[0 0 0]],
	collisionvolumetype = [[CylY]],
	corpse = [[CORTHUD_DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Light Plasma Kbot]],
	energyMake = 0.6,
	energyStorage = 0,
	energyUse = 0.6,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 640,
	maxDamage = 1768,
	maxSlope = 14,
	maxVelocity = 1.3,
	maxWaterDepth = 12,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[KBOT2]],
	name = [[Massive Thud]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[CORTHUD1]],
	script = [[corthud.cob]],
	seismicSignature = 0,
	selfDestructAs = [[BIG_UNIT]],
	side = [[CORE]],
	sightDistance = 380,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	turnRate = 1099,
	unitname = [[corthud1]],
	upright = true,
	workerTime = 0,
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:small_unit_flare1]],
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
			[1] = [[kbcormov]],
		},
		select = {
			[1] = [[kbcorsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARM_HAM1]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARM_HAM1 = {
		areaOfEffect = 54,
		ballistic = true,
		cegTag = [[Trail_cannon]],
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:LIGHT_PLASMA_BLING_UPG]],
		gravityaffected = [[TRUE]],
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		minbarrelangle = -35,
		name = [[PlasmaCannon]],
		nogap = 1,
		noSelfDamage = true,
		predictBoost = 0.4,
		range = 385,
		reloadtime = 1.75,
		renderType = 4,
		rgbColor = [[1 0.86 0.11]],
		separation = 0.45,
		size = 1.42,
		sizedecay = -0.15,
		soundHitDry = [[xplomed3]],
		soundStart = [[cannon1]],
		stages = 20,
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 286,
		damage = {
			default = 184,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	CORTHUD_DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[CORTHUD_HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORTHUD_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
	CORTHUD_HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Thud Heap]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[2X2D]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
