-- UNITDEF -- CJUNO --
--------------------------------------------------------------------------------

local unitName = "cjuno"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0,
	badTargetCategory = [[MOBILE]],
	bmcode = 0,
	brakeRate = 0,
	buildCostEnergy = 15124,
	buildCostMetal = 617,
	builder = false,
	buildPic = [[CJUNO.png]],
	buildTime = 27681,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTLAND WEAPON NOTSUB NOTSHIP NOTAIR]],
	corpse = [[DEAD]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Anti Radar/Jammer/Minefield Weapon]],
	energyStorage = 0,
	energyUse = 0,
	explodeAs = [[ESTOR_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	iconType = [[building]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maxDamage = 2250,
	maxSlope = 10,
	maxVelocity = 0,
	maxWaterDepth = 0,
	metalStorage = 0,
	name = [[Core Juno]],
	noAutoFire = false,
	objectName = [[CJUNO]],
	seismicSignature = 0,
	selfDestructAs = [[ATOMIC_BLAST]],
	side = [[CORE]],
	sightDistance = 494,
	smoothAnim = true,
	standingfireorder = 2,
	stealth = true,
	turnRate = 0,
	unitname = [[cjuno]],
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
			badTargetCategory = [[MOBILE]],
			def = [[JUNO_PULSE]],
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
		soundHit = [[junohit2]],
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
			amphibious = 1,
			anniddm = 1,
			antibomber = 1,
			antifighter = 1,
			antiraider = 1,
			atl = 1,
			blackhydra = 1,
			commanders = 1,
			crawlingbombs = 1,
			default = 1,
			dl = 1,
			['else'] = 1,
			flakboats = 1,
			flaks = 1,
			flamethrowers = 1,
			gunships = 1,
			heavyunits = 1,
			hgunships = 1,
			jammerboats = 2000,
			krogoth = 1,
			l1bombers = 1,
			l1fighters = 1,
			l1subs = 1,
			l2bombers = 1,
			l2fighters = 1,
			l2subs = 1,
			l3subs = 1,
			mechs = 1,
			mines = 1000,
			nanos = 1,
			otherboats = 1,
			plasmaguns = 1,
			radar = 2000,
			seadragon = 1,
			tl = 1,
			vtol = 1,
			vtrans = 1,
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
		footprintX = 4,
		footprintZ = 4,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CJUNO_DEAD]],
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
