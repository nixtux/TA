-- UNITDEF -- ARMTIGRE2 --
--------------------------------------------------------------------------------

local unitName = "armtigre2"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.09,
  bmcode             = 1,
  brakeRate          = 0.01,
  buildCostEnergy    = 92567,
  buildCostMetal     = 4260,
  builder            = false,
  buildTime          = 76193,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[ALL TANK MOBILE WEAPON NOTSUB NOTSHIP NOTAIR]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  defaultmissiontype = [[Standby]],
  description        = [[All-Terrain Assault evo Tank]],
  designation        = [[ARM-TIGRE]],
  downloadable       = 1,
  energyMake         = 0.5,
  energyStorage      = 0,
  energyUse          = 1.1,
  explodeAs          = [[NUCLEAR_BLAST]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Tank d'assault �vol amphib]],
  frenchname         = [[Tigre]],
  germandescription  = [[Verb. Amphibischer Angriffspanzer]],
  germanname         = [[Tiger]],
  maneuverleashlength = 640,
  mass               = 200000,
  maxDamage          = 16850,
  maxSlope           = 12,
  maxVelocity        = 1.1,
  maxWaterDepth      = 255,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[HTKBOT4]],
  name               = [[Black Tiger]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMTIGRE2]],
  radarDistance      = 0,
  selfDestructAs     = [[NUCLEAR_BLAST]],
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 755,
  sonarDistance      = 0,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 1,
  threed             = 1,
  turnRate           = 180,
  unitname           = [[armtigre2]],
  unitnumber         = 5698,
  version            = 1.2,
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
      [[krogok1]],
    },
    select = {
      [[krogsel1]],
    },
  },
  weapons = {
    [1]  = {
      def                = [[COR_GOL1]],
      onlyTargetCategory = [[NOTAIR]],
      },
    [3]  = {
      def                = [[CORKROG_ROCKET]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  CORKROG_ROCKET = {
    areaOfEffect       = 96,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:STARFIRE]],
    fireStarter        = 70,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    metalpershot       = 0,
    model              = [[fmdmisl]],
    name               = [[HeavyRockets]],
    noSelfDamage       = true,
    proximityPriority  = -1,
    range              = 800,
    reloadtime         = 2.75,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.1,
    smokeTrail         = true,
    soundHit           = [[xplosml2]],
    soundStart         = [[rocklit1]],
    startsmoke         = 1,
    startVelocity      = 200,
    texture2           = [[coresmoketrail]],
    tolerance          = 9000,
    tracks             = true,
    turnRate           = 50000,
    twoPhase           = true,
    vlaunch            = true,
    weaponAcceleration = 230,
    weaponTimer        = 2,
    weaponType         = [[StarburstLauncher]],
    weaponVelocity     = 4000,
    damage = {
      anniddm            = 270,
      default            = 360,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
  COR_GOL1 = {
    areaOfEffect       = 372,
    ballistic          = true,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:FLASH96]],
    gravityaffected    = [[true]],
    impulseBoost       = 0.0,
    impulseFactor      = 0.0,
    name               = [[HeavyCannon]],
    noSelfDamage       = true,
    range              = 800,
    reloadtime         = 4.7,
    renderType         = 4,
    soundHit           = [[xplomed4]],
    soundStart         = [[cannhvy2]],
    startsmoke         = 1,
    turret             = true,
    weaponType         = [[Cannon]],
    weaponVelocity     = 328.63354492188,
    damage = {
      commanders         = 750,
      default            = 1600,
      gunships           = 55,
      hgunships          = 55,
      l1bombers          = 55,
      l1fighters         = 55,
      l1subs             = 5,
      l2bombers          = 55,
      l2fighters         = 55,
      l2subs             = 5,
      l3subs             = 5,
      vradar             = 55,
      vtol               = 55,
      vtrans             = 55,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  armtigre_heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = unitDef.maxDamage*0.6,
    description        = [[Black Tiger Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 4,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.8,
    object             = [[4x4a]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  dead = {
    blocking           = true,
    category           = [[arm_corpses]],
    damage             = unitDef.maxDamage*0.36,
    description        = [[Black Tiger Wreckage]],
    featureDead        = [[armtigre_heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 6,
    height             = 20,
    hitdensity         = 100,
    metal              = unitDef.buildCostMetal*0.64,
    object             = [[armtigre2_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
