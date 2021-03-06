-- UNITDEF -- TLLSTUNER --
--------------------------------------------------------------------------------

local unitName = "tllstuner"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode = 0,
	buildAngle = 8192,
	buildCostEnergy = 3872,
	buildCostMetal = 662,
	builder = false,
	buildingGroundDecalDecaySpeed = 30,
	buildingGroundDecalSizeX = 6,
	buildingGroundDecalSizeY = 6,
	buildingGroundDecalType = [[tllstuner_aoplane.dds]],
	buildTime = 11528,
	canAttack = true,
	canstop = 1,
	category = [[ALL NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[dead]],
	damageModifier = 0.125,
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Stuner Cannon]],
	designation = [[T-PC-L]],
	downloadable = 1,
	explodeAs = [[MEDIUM_BUILDINGEX]],
	firestandorders = 1,
	footprintX = 4,
	footprintZ = 4,
	maxDamage = 2288,
	maxSlope = 10,
	maxWaterDepth = 0,
	name = [[Sleeper]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[tllstuner]],
	selfDestructAs = [[MEDIUM_BUILDING]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 410,
	standingfireorder = 2,
	unitname = [[tllstuner]],
	unitnumber = 842,
	useBuildingGroundDecal = true,
	workerTime = 0,
	yardMap = [[oooo oooo oooo oooo]],
	featureDefs = nil,
	sounds = {
		canceldestruct = [[cancel2]],
		cloak = [[kloak2]],
		uncloak = [[kloak2un]],
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
			[1] = [[servmed1]],
		},
		select = {
			[1] = [[servmed1]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[TINY]],
			def = [[TLLSTUNER_GUN]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	TLLSTUNER_GUN = {
		areaOfEffect = 28,
		beamWeapon = true,
		duration = 0.06, --new
		craterBoost = 0,
		craterMult = 0,
		energypershot = 200,
		intensity = 0.88, --new
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lineOfSight = true,
		metalpershot = 0,
		name = [[Stuner Cannon]],
		noSelfDamage = true,
		paralyzer = true,
		paralyzertime = 5,
		impulseFactor = 0.123,
		range = 660,
		reloadtime = 2,
		renderType = 0,
		rgbColor = [[0.0 0.0 0.5]],
		size = 1.11,
		soundHitDry = [[xplomed2]],
		soundStart = [[tllstuner]],
		startsmoke = 1,
		thickness = 1.6, --new
		tolerance = 500,
		turret = true,
		weaponType = [[LaserCannon]],
		weaponVelocity = 750,
		damage = {
			default = 1800,
			commanders = 300,
			experimental_ships = 3600,
			ships = 2700,
			subs = 5,
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
		footprintX = 4,
		footprintZ = 4,
		height = 12,
		hitdensity = 23,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tllstuner_dead]],
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
		footprintX = 4,
		footprintZ = 4,
		hitdensity = 4,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[4x4a]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
