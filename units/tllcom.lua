-- UNITDEF -- TLLCOM --
--------------------------------------------------------------------------------

local unitName = "tllcom"

--------------------------------------------------------------------------------

local unitDef = {
	acceleration = 0.18,
	activateWhenBuilt = true,
	amphibious = 1,
	autoHeal = 11,
	badTargetCategory = [[ANTILASER]],
	bmcode = 1,
	brakeRate = 0.375,
	buildCostEnergy = 2500,
	buildCostMetal = 2500,
	buildDistance = 120,
	builder = true,
	buildPic = [[TLLCOM.png]],
	buildTime = 75000,
	canAttack = true,
	canCapture = true,
	canDGun = true,
	canGuard = true,
	canMove = true,
	canPatrol = true,
	canreclamate = 1,
	canstop = 1,
	category = [[ARM WEAPON NOTAIR NOTSUB NOTSHIP ALL]],
	cloakCost = 120,
	cloakCostMoving = 1100,
	collisionvolumeoffsets = [[0 -12 -3]],
	collisionvolumescales = [[40 48 30]],
	collisionvolumetest = 1,
	collisionvolumetype = [[Ell]],
	commander = true,
	corpse = [[DEAD]],
	defaultmissiontype = [[Standby]],
	description = [[Commander]],
	energyMake = 40,
	energyStorage = 1000,
	energyUse = 0,
	explodeAs = [[COMMANDER_BLAST1]],
	firestandorders = 1,
	footprintX = 2,
	footprintZ = 2,
	hideDamage = true,
	iconType = [[armcommander]],
	idleAutoHeal = 9,
	idleTime = 1800,
	immunetoparalyzer = 1,
	maneuverleashlength = 640,
	mass = 5000,
	maxDamage = 4500,
	maxSlope = 20,
	maxVelocity = 1.32,
	maxWaterDepth = 35,
	metalMake = 2,
	metalStorage = 1000,
	minCloakDistance = 45,
	mobilestandorders = 1,
	movementClass = [[AKBOT2]],
	name = [[Commander]],
	noChaseCategory = [[ALL]],
	norestrict = 1,
	objectName = [[TLLCOM]],
	radarDistance = 900,
	reclaimable = false,
	seismicSignature = 0,
	selfDestructAs = [[COMMANDER_BLAST1]],
	selfDestructCountdown = 4,
	showPlayerName = true,
	side = [[TLL]],
	sightDistance = 550,
	smoothAnim = true,
	sonarDistance = 400,
	standingfireorder = 2,
	standingmoveorder = 0,
	steeringmode = 2,
	turnRate = 1148,
	unitname = [[tllcom]],
	upright = true,
	workerTime = 320,
	buildoptions = {
		[1] = [[tllsolar]],
		[2] = [[tlltide]],
		[3] = [[tllwindtrap]],
		[4] = [[tllmstor]],
		[5] = [[tllestor]],
		[6] = [[tlluwmstorage]],
		[7] = [[tlluwestorage]],
		[8] = [[tllmex]],
		[9] = [[tlluwmex]],
		[10] = [[tllmm]],
		[11] = [[tllwmconv]],
		[12] = [[tlllab]],
		[13] = [[tllvp]],
		[14] = [[tllap]],
		[15] = [[tllsy]],
		[16] = [[tlltower]],
		[17] = [[tllradar]],
		[18] = [[tllsonar]],
		[19] = [[tlldt]],
		[20] = [[tlldtns]],
		[21] = [[tllweb]],
		[22] = [[tlltorp]],
		[23] = [[tlllmt]],
		[24] = [[tlllmtns]],
		[25] = [[tlldcsta]],
		[26] = [[tllshoretorp]],
		[27] = [[tllsolarns]],
	},
	featureDefs = nil,
	sounds = {
		build = [[nanlath1]],
		canceldestruct = [[cancel2]],
		capture = [[capture1]],
		cloak = [[kloak1]],
		repair = [[repair1]],
		uncloak = [[kloak1un]],
		underattack = [[warning2]],
		unitcomplete = [[kcarmmov]],
		working = [[reclaim1]],
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
			[1] = [[kcarmmov]],
		},
		select = {
			[1] = [[kcarmsel]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			badTargetCategory = [[ANTILASER]],
			def = [[TLLCOM_LIGHTNING]],
		},
		[3] = {
			def = [[ARM_DISINTEGRATOR3]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARM_DISINTEGRATOR3 = {
		areaOfEffect = 36,
		avoidFriendly = false,
		beamWeapon = true,
		commandfire = true,
		craterBoost = 0,
		craterMult = 0,
		energypershot = 600,
		explosionGenerator = [[custom:DGUNTRACE]],
		fireStarter = 100,
		impulseBoost = 0,
		impulseFactor = 0,
		lineOfSight = true,
		name = [[Disintegrator]],
		noExplode = true,
		noSelfDamage = true,
		range = 280,
		reloadtime = 0.9,
		renderType = 3,
		soundHit = [[xplomas2]],
		soundStart = [[disigun1]],
		soundTrigger = true,
		startsmoke = 1,
		tolerance = 10000,
		turret = true,
		weaponTimer = 4.2,
		weaponType = [[DGun]],
		weaponVelocity = 300,
		damage = {
			chicken = 20,
			commanders = 450,
			default = 999999,
			rech = 120,
		},
	},
	TLLCOM_LIGHTNING = {
		areaOfEffect = 12,
		beamWeapon = true,
		color = 144,
		color2 = 217,
		craterBoost = 0,
		craterMult = 0,
		duration = 3,
		explosionart = [[explode5]],
		explosiongaf = [[fx]],
		fireStarter = 85,
		id = 217,
		impulseBoost = 0.123,
		impulseFactor = 0.123,
		lavaexplosionart = [[lavasplashsm]],
		lavaexplosiongaf = [[fx]],
		lineOfSight = true,
		name = [[Commander Lightning Beam]],
		noSelfDamage = true,
		range = 330,
		reloadtime = 0.9,
		renderType = 7,
		soundHit = [[lashit2]],
		soundStart = [[Lghthvy1]],
		tolerance = 600,
		turret = true,
		waterexplosionart = [[h2oboom1]],
		waterexplosiongaf = [[fx]],
		weaponTimer = 1,
		weaponType = [[LightningCannon]],
		weaponVelocity = 860,
		damage = {
			default = 200,
			l1subs = 9,
			l2subs = 9,
			l3subs = 9,
			vtrans = 220,
		},
	},
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
	DEAD = {
		blocking = true,
		category = [[corpses]],
		damage = 2.2222 * unitDef.maxDamage,
		description = unitDef.name .. [[ Wreckage]],
		energy = 0,
		featureDead = [[ARMCOM_HEAP]],
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 20,
		hitdensity = 100,
		metal = 1.0000 * unitDef.buildCostMetal,
		object = [[ARMCOM_DEAD]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
	},
	HEAP = {
		blocking = false,
		category = [[heaps]],
		damage = 1.1111 * unitDef.maxDamage,
		description = unitDef.name .. [[ Debris]],
		energy = 0,
		featurereclamate = [[SMUDGE01]],
		footprintX = 2,
		footprintZ = 2,
		height = 4,
		hitdensity = 100,
		metal = 0.5000 * unitDef.buildCostMetal,
		object = [[2X2F]],
		reclaimable = true,
		seqnamereclamate = [[TREE1RECLAMATE]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
