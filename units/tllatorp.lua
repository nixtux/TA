-- UNITDEF -- TLLATORP --
--------------------------------------------------------------------------------

local unitName = "tllatorp"

--------------------------------------------------------------------------------

local unitDef = {
	activateWhenBuilt = true,
	bmcode = 0,
	buildAngle = 16384,
	buildCostEnergy = 6520,
	buildCostMetal = 2190,
	builder = false,
	buildTime = 8580,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[dead]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Torpedo & Depth Charge Launcher]],
	designation = [[TLL-ATL]],
	energyMake = 0.2,
	energyUse = 0.2,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 3,
	footprintZ = 3,
	maxDamage = 808,
	minWaterDepth = 5,
	name = [[Advanced Torpedo Launcher]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	noshadow = 1,
	objectName = [[TLLatorp]],
	ovradjust = 1,
	radarDistance = 0,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 150,
	sonarDistance = 750,
	standingfireorder = 2,
	unitname = [[tllatorp]],
	unitnumber = 866,
	waterline = 11,
	workerTime = 0,
	yardMap = [[wwwwwwwww]],
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
			[1] = [[torpadv2]],
		},
		select = {
			[1] = [[torpadv2]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[TINY]],
			def = [[TLL_ADVEDO]],
			onlyTargetCategory = [[NOTHOVERNOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	TLL_ADVEDO = {
		areaOfEffect = 32,
		burnblow = true,
		burst = 2,
		burstrate = 0.5,
		guidance = true,
		id = 219,
		lineOfSight = true,
		model = [[TLLtorpedo]],
		name = [[Torpedo Launcher]],
		propeller = 1,
		range = 601,
		reloadtime = 2.6,
		renderType = 1,
		selfprop = true,
		soundHitDry = [[SPLASH]],
		soundStart = [[torpedo1]],
		sprayAngle = 5000,
		startVelocity = 100,
		tracks = true,
		turnRate = 50000,
		turret = true,
		waterWeapon = true,
		weaponAcceleration = 15,
		weaponTimer = 6,
		weaponType = [[TorpedoLauncher]],
		weaponVelocity = 100,
		damage = {
			default = 285,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	dead = {
		blocking = true,
		category = [[tll_corpses]],
		damage = 0.6000 * unitDef.maxDamage,
		description = [[Wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		height = 12,
		hitdensity = 105,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tllatorp_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[Metal Shards]],
		featurereclamate = [[smudge01]],
		footprintX = 3,
		footprintZ = 3,
		hitdensity = 4,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
