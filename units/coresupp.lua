-- UNITDEF -- CORESUPP --
--------------------------------------------------------------------------------

local unitName = "coresupp"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.072,
	activateWhenBuilt = true,
	bmcode = 1,
	brakeRate = 0.019,
	buildAngle = 16384,
	buildCostEnergy = 1912,
	buildCostMetal = 367,
	builder = false,
	buildPic = [[CORESUPP.png]],
	buildTime = 6660,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTVTOL WEAPON]],
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Corvette]],
	energyMake = 1,
	energyStorage = 0,
	energyUse = 1,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	floater = true,
	footprintX = 4,
	footprintZ = 4,
	iconType = [[sea]],
	idleAutoHeal = 5,
	idleTime = 1800,
	maneuverleashlength = 640,
	maxDamage = 1700,
	maxVelocity = 3.2,
	metalStorage = 0,
	minWaterDepth = 12,
	mobilestandorders = 1,
	movementClass = [[BOAT4]],
	name = [[Supporter]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[CORESUPP]],
	scale = 0.5,
	seismicSignature = 0,
	selfDestructAs = [[BIG_UNIT]],
	side = [[CORE]],
	sightDistance = 429,
	smoothAnim = true,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 1,
	turnRate = 528,
	unitname = [[coresupp]],
	waterline = 1,
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
			def = [[CORVETTE_LIGHTLASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[2] = {
			def = [[CORVETTE_LIGHTLASER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	CORVETTE_LIGHTLASER = {
		areaOfEffect = 12,
		beamlaser = 1,
		beamTime = 0.12,
		coreThickness = 0.175,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 20,
		explosionGenerator = [[custom:SMALL_RED_BURN]],
		fireStarter = 30,
		impactonly = 1,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		laserFlareSize = 10,
		lineOfSight = true,
		name = [[LightLaser]],
		noSelfDamage = true,
		range = 320,
		reloadtime = 0.71,
		renderType = 0,
		rgbColor = [[1 0 0]],
		soundHitDry = [[lasrhit2]],
		soundStart = [[lasrfir3]],
		soundTrigger = true,
		targetMoveError = 0.1,
		thickness = 2.5,
		tolerance = 10000,
		turret = true,
		weaponType = [[BeamLaser]],
		weaponVelocity = 2250,
		damage = {
			commanders = 70,
			default = 52,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = false,
		category = [[corpses]],
		collisionvolumeoffsets = [[2.05702972412 -6.65740128174 -1.55792999268]],
		collisionvolumescales = [[37.2419281006 12.2129974365 67.4956207275]],
		collisionvolumetype = [[Box]],
		damage = 0.6000 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 3,
		footprintZ = 3,
		height = 20,
		hitdensity = 100,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[CORESUPP_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
