-- UNITDEF -- CORPYROX --
--------------------------------------------------------------------------------

local unitName = "corpyrox"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.1,
	antiweapons = 1,
	bmcode = 1,
	brakeRate = 0.18,
	buildCostEnergy = 20000,
	buildCostMetal = 3000,
	builder = false,
	buildTime = 45000,
	canAttack = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canstop = 1,
	category = [[ALL ANTIFLAME MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	collisionVolumeScales = [[77 87 67]],
	collisionVolumeOffsets = [[0 0 0]],
	collisionVolumeTest = 1,
	collisionVolumeType = [[ellipsoid]],
	damageModifier = 0.666,
	defaultmissiontype = [[Standby]],
	description = [[Assault Captain]],
	designation = [[KB-C9]],
	energyMake = 1.1,
	energyStorage = 0,
	energyUse = 1.1,
	explodeAs = [[BIG_UNITEX]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	hideDamage = true,
	immunetoparalyzer = 1,
	maneuverleashlength = 640,
	maxDamage = 18600,
	maxSlope = 17,
	maxVelocity = 1.8,
	maxWaterDepth = 25,
	metalStorage = 0,
	mobilestandorders = 1,
	movementClass = [[KBOT2]],
	name = [[Demon]],
	noAutoFire = false,
	noChaseCategory = [[VTOL]],
	objectName = [[CORPYROX]],
	ovradjust = 1,
	radarDistance = 0,
	selfDestructAs = [[BIG_UNIT]],
	shootme = 1,
	side = [[CORE]],
	sightDistance = 540,
	standingfireorder = 2,
	standingmoveorder = 1,
	steeringmode = 2,
	turnRate = 950,
	unitname = [[corpyrox]],
	unitnumber = 125,
	upright = true,
	workerTime = 0,
	customparams = {
		RequireTech = [[Advanced T2 Unit Research Centre]],
	},
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:newnanoboomcore]],
			[2] = [[custom:PILOT]],
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
			badTargetCategory = [[ANTIFLAME]],
			def = [[FLAMETHROWER]],
			onlyTargetCategory = [[NOTVTOL]],
		},
		[3] = {
			badTargetCategory = [[ANTIFLAME]],
			def = [[PYRO_ROCKET]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	FLAMETHROWER = {
		areaOfEffect = 48,
		avoidFeature = false,
		burst = 22,
		burstrate = 0.01,
		craterBoost = 0,
		craterMult = 0,
		endsmoke = 1,
		fireStarter = 100,
		flameGfxTime = 1.1,
		groundbounce = true,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		intensity = 0.6,
		lineOfSight = true,
		name = [[FlameThrower]],
		noSelfDamage = true,
		range = 395,
		reloadtime = 1.1,
		renderType = 5,
		rgbColor = [[1 0.95 0.9]],
		rgbColor2 = [[0.9 0.85 0.8]],
		sizeGrowth = 1.1,
		soundStart = [[Flamhvy1]],
		soundTrigger = false,
		sprayAngle = 1500,
		tolerance = 2500,
		turret = true,
		weaponTimer = 1.5,
		weaponType = [[Flame]],
		weaponVelocity = 265,
		damage = {
			default = 18,
			flamethrowers = 6,
			raider_resistant = 8,
			subs = 5,
		},
	},
	PYRO_ROCKET = {
		areaofeffect = 96,
		avoidfeature = false,
		burst = 10,
		burstrate = 0.11999999731779,
		craterboost = 0,
		cratermult = 0,
		dance = 30,
		edgeeffectiveness = 0.5,
		explosiongenerator = [[custom:MEDMISSILE_EXPLOSION]],
		firestarter = 70,
		flighttime = 3,
		impulseboost = 0.12300000339746,
		impulsefactor = 0.12300000339746,
		metalpershot = 0,
		model = [[exphvyrock]],
		movingaccuracy = 600,
		name = [[RavenCatapultRockets]],
		noselfdamage = true,
		proximitypriority = -1,
		range = 1050,
		reloadtime = 15,
		smoketrail = true,
		soundhit = [[rockhit]],
		soundstart = [[rapidrocket3]],
		startvelocity = 200,
		texture2 = [[coresmoketrail]],
		trajectoryheight = 1,
		turnrate = 0,
		turret = true,
		weaponacceleration = 120,
		weapontimer = 6,
		weapontype = [[MissileLauncher]],
		weaponvelocity = 510,
		wobble = 2000,
		damage = {
			default = 450,
			subs = 5,
		},
	},
}
unitDef.weaponDefs = weaponDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
