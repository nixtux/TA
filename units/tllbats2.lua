-- UNITDEF -- TLLBATS2 --
--------------------------------------------------------------------------------

local unitName = "tllbats2"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.015,
	bmcode = 1,
	brakeRate = 0.12,
	buildAngle = 16384,
	buildCostEnergy = 27540,
	buildCostMetal = 5181,
	builder = false,
	buildTime = 49640,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL HUGE MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL WEAPON]],
	corpse = [[dead]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Laser Battleship]],
	designation = [[TL-BS2]],
	energyMake = 20,
	energyStorage = 0,
	energyUse = 45,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	floater = true,
	footprintX = 6,
	footprintZ = 6,
	maneuverleashlength = 640,
	maxDamage = 7210,
	maxVelocity = 2.05,
	metalStorage = 0,
	minWaterDepth = 25,
	mobilestandorders = 1,
	movementClass = [[DBOAT6]],
	name = [[Interceptor]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[TLLBATS2]],
	ovradjust = 1,
	radarDistance = 0,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 350,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	turnRate = 362,
	unitname = [[tllbats2]],
	unitnumber = 930,
	waterline = 9,
	workerTime = 0,
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
			[1] = [[shcormov]],
		},
		select = {
			[1] = [[shcorsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[CORE_BATSLASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[TLL_LASERSHIP]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CORE_BATSLASER = {
		areaOfEffect = 8,
		beamlaser = 1,
		beamTime = 0.2,
		coreThickness = 0.2,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 125,
		explosionGenerator = [[custom:SMALL_GREEN_LASER_BURN]],
		fireStarter = 90,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		laserFlareSize = 15,
		lineOfSight = true,
		name = [[HighEnergyLaser]],
		noSelfDamage = true,
		range = 950,
		reloadtime = 1.1,
		renderType = 0,
		rgbColor = [[0 1 0]],
		soundHitDry = [[lasrhit1]],
		soundStart = [[Lasrmas2]],
		targetMoveError = 0.2,
		thickness = 3,
		tolerance = 10000,
		turret = true,
		weaponType = [[BeamLaser]],
		weaponVelocity = 700,
		damage = {
			default = 300,
			subs = 5,
		},
	},
	TLL_LASERSHIP = {
		areaOfEffect = 8,
		beamWeapon = true,
		energypershot = 10,
		fireStarter = 30,
		id = 220,
		lineOfSight = true,
		name = [[Ship Light Laser]],
		range = 620,
		reloadtime = 0.92,
		renderType = 0,
		rgbColor = [[1.000 0.059 0.000]],
		soundHitDry = [[lasrhit2]],
		soundStart = [[lasrfir3]],
		soundTrigger = true,
		tolerance = 500,
		turret = true,
		weaponType = [[LaserCannon]],
		weaponVelocity = 900,
		damage = {
			default = 90,
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
		footprintX = 6,
		footprintZ = 6,
		height = 12,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tllbats2_dead]],
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
		footprintX = 6,
		footprintZ = 6,
		hitdensity = 5,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[6x6b]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[all]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
