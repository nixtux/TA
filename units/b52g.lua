-- UNITDEF -- B52G --
--------------------------------------------------------------------------------

local unitName = "b52g"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.15,
	ai_limit = [[limit B-52G 6]],
	ai_weight = [[weight B-52G 4]],
	altfromsealevel = 1,
	attackrunlength = 305,
	bankscale = 1,
	bmcode = 1,
	brakeRate = 2,
	buildCostEnergy = 85342,
	buildCostMetal = 7350,
	builder = false,
	buildPic = [[rat_armbomber.bmp]],
	buildTime = 77364,
	canAttack = true,
	canFly = true,
	canGuard = false,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	cantBeTransported = true,
	category = [[ALL MOBILE NOTDEFENSE NOTSUB NOTSUBNOTSHIP VTOL WEAPON]],
	collide = false,
	copyright = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
	cruiseAlt = 320,
	defaultmissiontype = [[VTOL_standby]],
	description = [[TSAR Bomber]],
	designation = [[MST B-52G Stratofortress]],
	downloadable = 1,
	energyMake = 30,
	energyStorage = 0,
	energyUse = 20,
	explodeAs = [[BIG_UNITEX]],
	footprintX = 3,
	footprintZ = 3,
	frenchdescription = [[Bombardier lourd]],
	frenchname = [[B-52G Stratorfortress]],
	germandescription = [[Schwerer Bomber]],
	germanname = [[B-52G Stratofortress]],
	italiandescription = [[Heavy Bomber]],
	italianname = [[B-52G Stratofortress]],
	maneuverleashlength = 2500,
	maxDamage = 12500,
	maxSlope = 10,
	maxVelocity = 9,
	maxWaterDepth = 0,
	metalStorage = 0,
	mobilestandorders = 1,
	name = [[StratoBomber]],
	noAutoFire = false,
	noChaseCategory = [[SUB VTOL]],
	objectName = [[RaT_ArmBomber]],
	ovradjust = 1,
	scale = 1,
	script = [[RaT_ArmBomber.cob]],
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[ARM]],
	sightDistance = 400,
	spanishdescription = [[Heavy Bomber]],
	spanishname = [[B-52G Stratofortress]],
	standingmoveorder = 1,
	steeringmode = 1,
	threed = 1,
	turnRate = 185,
	unitname = [[RaT_ArmBomber]],
	unitnumber = 8016,
	upright = true,
	version = 2,
	workerTime = 0,
	zbuffer = 1,
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
			[1] = [[vtolarmv]],
		},
		select = {
			[1] = [[vtolarac]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[Mk-83]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	['Mk-83'] = {
		areaOfEffect = 310,
		balistic = 1,
		collideFriendly = false,
		commandfire = false,
		craterBoost = 0,
		craterMult = 0,
		cruise = 1,
		cruisealt = 260,
		dropped = true,
		explosionart = [[explode3]],
		explosiongaf = [[fx]],
		fireStarter = 100,
		flightTime = 175,
		gravityaffected = [[true]],
		guidance = false,
		id = 133,
		impulseBoost = 0.123,
		impulseFactor = 0.133,
		interceptedByShieldType = 16,
		lavaexplosionart = [[lavasplash]],
		lavaexplosiongaf = [[fx]],
		model = [[praetorian_missile]],
		name = [[Mk-83]],
		noSelfDamage = true,
		range = 2100,
		reloadtime = 21,
		renderType = 6,
		selfprop = true,
		smokedelay = 0.2,
		smokeTrail = true,
		soundHit = [[xplomed2]],
		soundStart = [[bombrel]],
		sprayAngle = 1,
		startVelocity = 220,
		targetable = 0,
		tracks = true,
		twoPhase = true,
		unitsonly = 0,
		waterexplosionart = [[h2o]],
		waterexplosiongaf = [[fx]],
		waterWeapon = false,
		weaponAcceleration = 200,
		weaponType = [[AircraftBomb]],
		weaponVelocity = 600,
		damage = {
			bomb_resistant = 3000,
			bombers = 5,
			commanders = 3000,
			default = 9000,
			fighters = 5,
			flak_resistant = 5,
			unclassed_air = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
