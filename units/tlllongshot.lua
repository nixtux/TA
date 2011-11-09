-- UNITDEF -- TLLLONGSHOT --
--------------------------------------------------------------------------------

local unitName = "tlllongshot"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.5,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.5,
  buildCostEnergy    = 2800,
  buildCostMetal     = 800,
  builder            = false,
  buildTime          = 5500,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[ALL MEDIUM MOBILE NOTDEFENSE NOTHOVERNOTVTOL NOTSUB NOTSUBNOTSHIP NOTVTOL WEAPON]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[Medium Artillary Assault Tank]],
  designation        = [[none]],
  energyMake         = 1,
  energyStorage      = 0,
  energyUse          = 0,
  explodeAs          = [[BIG_UNITEX]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  maneuverleashlength = 640,
  maxDamage          = 2400,
  maxSlope           = 25,
  maxVelocity        = 1.2,
  maxWaterDepth      = 12,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[HTANK4]],
  name               = [[Longshot]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[tlllongshot]],
  radarDistance      = 0,
  scale              = 1.2,
  selfDestructAs     = [[BIG_UNIT]],
  shootme            = 1,
  side               = [[BIO]],
  sightDistance      = 370,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  TEDClass           = [[TANK]],
  threed             = 1,
  turnRate           = 325,
  unitname           = [[tlllongshot]],
  unitnumber         = 30119,
  version            = 3.0,
  workerTime         = 0,
  zbuffer            = 1,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    cant = {
      [[cantdo4]],
    },
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    ok = {
      [[tcormove]],
    },
    select = {
      [[tcorsel]],
    },
  },
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[EMP_ARTILLERY]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  EMP_ARTILLERY = {
    	accuracy = 300,
		aimrate = 500,
		alphaDecay = 0.01,
		areaOfEffect = 800,
		ballistic = true,
		cegTag = [[vulcanfx1]],
		color = 3,
		craterBoost = 0,
		craterMult = 0,
		edgeEffectiveness = 50,
		energypershot = 8000,
		explosionGenerator = [[custom:EMPFLASH240]],
		fireStarter = 50,
		gravityaffected = [[true]],
		groundbounce = false,
		holdtime = 1,
		id = 72,
		impulseBoost = 0,
		impulseFactor = 0,
		name = [[Emp Cannon]],
		noGap = true,
		paralyzer = true,
		paralyzeTime = 16,
		range = 3750,
		reloadtime = 2,
		renderType = 4,
		rgbColor = [[1 0.8 0.5]],
		separation = 0.01,
		size = 4,
		sizeDecay = -0.01,
		soundHit = [[EMGPULS1]],
		soundStart = [[xplonuk4]],
		stages = 20,
		startsmoke = 1,
		tolerance = 7000,
		turret = true,
		waterbounce = false,
		weaponType = [[Cannon]],
		weaponVelocity = 800,
		damage = {
			default = 400,
			subs = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    catagory           = [[armcorpses]],
    damage             = 15,
    description        = [[Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 1,
    hitdensity         = 23,
    metal              = 200,
    object             = [[tlllongshot_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[all]],
  },
  heap = {
    blocking           = false,
    catagory           = [[heaps]],
    damage             = 11,
    description        = [[Metal Shards]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    hitdensity         = 4,
    metal              = 100,
    object             = [[4x4a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[all]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------