-- UNITDEF -- TLLLRPT --
--------------------------------------------------------------------------------

local unitName = "tlllrpt"

--------------------------------------------------------------------------------

local unitDef = {
	bmcode = 0,
	buildAngle = 6700,
	buildCostEnergy = 18951,
	buildCostMetal = 5142,
	builder = false,
	buildingGroundDecalDecaySpeed = 30,
	buildingGroundDecalSizeX = 6,
	buildingGroundDecalSizeY = 6,
	buildingGroundDecalType = [[tlllrpt_aoplane.dds]],
	buildTime = 91851,
	canAttack = true,
	canGuard = true,
	canstop = 1,
	category = [[ALL NOTDEFENSE NOTHOVERNOTVTOL NOTMOBILE NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
	corpse = [[dead]],
	defaultmissiontype = [[GUARD_NOMOVE]],
	description = [[Long Range Plasma Canon]],
	designation = [[]],
	energyMake = 0,
	energyUse = 0,
	explodeAs = [[ATOMIC_BLAST]],
	firestandorders = 1,
	firestate = 2,
	footprintX = 4,
	footprintZ = 4,
	maxDamage = 5211,
	maxSlope = 10,
	maxWaterDepth = 0,
	name = [[L.R.P.T.]],
	noAutoFire = false,
	noChaseCategory = [[ALL]],
	objectName = [[TLLLRPT]],
	onoffable = true,
	selfDestructAs = [[ATOMIC_BLAST]],
	shootme = 1,
	side = [[TLL]],
	sightDistance = 210,
	standingfireorder = 2,
	unitname = [[tlllrpt]],
	unitnumber = 820,
	useBuildingGroundDecal = true,
	yardMap = [[oooooooooooooooo]],
	customparams = {
		canareaattack = 1,
	},
	featureDefs = nil,
	sfxtypes = {
		explosiongenerators = {
			[1] = [[custom:berthaflare]],
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
			[1] = [[servlrg3]],
		},
		select = {
			[1] = [[servlrg3]],
		},
	},
	weaponDefs = nil,
	weapons = {
		[1] = {
			def = [[ARM_BERTHACANNON]],
			onlyTargetCategory = [[NOTVTOL]],
		},
	},
}

--------------------------------------------------------------------------------

local weaponDefs = {
	ARM_BERTHACANNON = {
		accuracy = 300,
		aimrate = 2500,
		areaOfEffect = 192,
		ballistic = true,
		cegTag = [[Trail_cannon_med]],
		craterBoost = 0.25,
		craterMult = 0.25,
		energypershot = 3000,
		explosionGenerator = [[custom:flash192_fakelight]],
		gravityaffected = [[TRUE]],
		holdtime = 1,
		impulseBoost = 0.5,
		impulseFactor = 0.5,
		leadBonus = 0,
		name = [[BerthaCannon]],
		nogap = 1,
		noSelfDamage = true,
		range = 6200,
		reloadtime = 11,
		renderType = 4,
		rgbColor = [[1 0.87 0.15]],
		separation = 0.45,
		size = 2.44,
		sizedecay = -0.15,
		soundHitDry = [[xplonuk1]],
		soundStart = [[xplonuk4]],
		stages = 20,
		startsmoke = 1,
		turret = true,
		weaponType = [[Cannon]],
		weaponVelocity = 1100,
		damage = {
			default = 1625,
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
		description = [[wreckage]],
		featureDead = [[heap]],
		featurereclamate = [[smudge01]],
		footprintX = 5,
		footprintZ = 5,
		height = 21,
		hitdensity = 105,
		metal = 0.8000 * unitDef.buildCostMetal,
		object = [[tlllrpt_dead]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
	heap = {
		blocking = false,
		category = [[heaps]],
		damage = 0.3600 * unitDef.maxDamage,
		description = [[wreckage]],
		featurereclamate = [[smudge01]],
		footprintX = 5,
		footprintZ = 5,
		height = 2,
		hitdensity = 105,
		metal = 0.6400 * unitDef.buildCostMetal,
		object = [[3x3D]],
		reclaimable = true,
		seqnamereclamate = [[tree1reclamate]],
		world = [[All Worlds]],
	},
}
unitDef.featureDefs = featureDefs

--------------------------------------------------------------------------------

return lowerkeys({[unitName] = unitDef})

--------------------------------------------------------------------------------
