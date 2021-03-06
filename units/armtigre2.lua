-- UNITDEF -- ARMTIGRE2 --
--------------------------------------------------------------------------------

local unitName = "armtigre2"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.09,
	bmcode = 1,
	brakeRate = 0.01,
	buildCostEnergy = 92567,
	buildCostMetal = 4260,
	builder = false,
	buildTime = 76193,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	cantBeTransported = true,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[dead]],
	defaultmissiontype = [[Standby]],
	description = [[All-Terrain Assault evo Tank]],
	designation = [[ARM-TIGRE]],
	downloadable = 1,
	energyMake = 0.5,
	energyStorage = 0,
	energyUse = 1.1,
	explodeAs = [[NUCLEAR_BLAST]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	maneuverleashlength = 640,
	mass = 200000,
	maxDamage = 16850,
	maxSlope = 12,
	maxVelocity = 1.1,
	maxWaterDepth = 255,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[HTKBOT4]],
	name = [[Black Tiger]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[ARMTIGRE2]],
	radarDistance = 0,
	selfDestructAs = [[NUCLEAR_BLAST]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 755,
	sonarDistance = 0,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 180,
	unitname = [[armtigre2]],
	unitnumber = 5698,
	workerTime = 0,
	customparams = {
		RequireTech = [[Advanced T3 Unit Research Centre]],
	},
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
			[1] = [[krogok1]],
		},
		select = {
			[1] = [[krogsel1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[COR_GOL1]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			def = [[CORKROG_ROCKET]],
			badTargetCategory = [[VTOL]],
			onlyTargetCategory = [[ALL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	COR_GOL1 = {
		areaOfEffect = 372,
		ballistic = true,
		cegTag = [[Trail_cannon]],
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:flash192_fakelight]],
		gravityaffected = [[TRUE]],
		impulseBoost = 0,
		impulseFactor = 0,
		name = [[HeavyCannon]],
		nogap = 1,
		noSelfDamage = true,
		range = 800,
		reloadtime = 2.5,
		renderType = 4,
		separation = 0.45,
		size = 2.21,
		sizedecay = -0.15,
		soundHitDry = [[xplomed4]],
		soundStart = [[cannhvy2]],
		stages = 20,
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 328.63354492188,
		damage = {
			commanders = 750,
			default = 2200,
			subs = 5,
		},
	},
	CORKROG_ROCKET = {
		areaOfEffect = 96,
		cegTag = [[ARMRAVENTRAIL]],
		craterBoost = 0,
		craterMult = 0,
		explosionGenerator = [[custom:incendiary_explosion_medium]],
		fireStarter = 70,
		guidance = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		model = [[fmdmisl]],
		name = [[HeavyRockets]],
		noSelfDamage = true,
		proximityPriority = -1,
		range = 800,
		reloadtime = 2,
		renderType = 1,
		selfprop = true,
		smokedelay = 0.1,
		smokeTrail = false,
		soundHitDry = [[xplosml2]],
		soundStart = [[rocklit1]],
		startsmoke = 1,
		startVelocity = 200,
		Texture1 = [[null]],
		Texture2 = [[null]],
		Texture3 = [[null]],
		Texture4 = [[null]],
		tolerance = 9000,
		tracks = true,
		turnRate = 50000,
		twoPhase = true,
		vlaunch = true,
		weaponAcceleration = 230,
		weaponTimer = 2,
		weaponType = [[StarburstLauncher]],
		weaponVelocity = 4000,
		damage = {
			default = 560,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	armtigre_heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Heap]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 4,
		height = 4,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[4x4a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	dead = {
		blocking = true,
		category = [[arm_corpses]],
		damage = 0.3600 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		featureDead = [[armtigre_heap]],
		featurereclamate = [[smudge01]],
		footprintX = 4,
		footprintZ = 6,
		height = 20,
		hitdensity = 100,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[armtigre2_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
