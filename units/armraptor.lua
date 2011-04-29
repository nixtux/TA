-- UNITDEF -- ARMRAPTOR --
--------------------------------------------------------------------------------

local unitName = "armraptor"

--------------------------------------------------------------------------------

local unitDef = {
  acceleration       = 0.21,
  badTargetCategory  = [[VTOL]],
  bmcode             = 1,
  brakeRate          = 0.21,
  buildCostEnergy    = 364500,
  buildCostMetal     = 13450,
  builder            = false,
  buildPic           = [[armraptor.DDS]],
  buildTime          = 356483,
  canAttack          = true,
  canGuard           = true,
  canMove            = true,
  canPatrol          = true,
  canstop            = 1,
  cantBeTransported  = true,
  category           = [[ARM KBOT MOBILE WEAPON NOTAIR NOTSUB ANTILASER NOTSHIP LEVEL3 ALL]],
  collisionvolumeoffsets = [[0 -15 0]],
  collisionvolumescales = [[115 150 105]],
  collisionvolumetest = 0,
  collisionvolumetype = [[Ell]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  damageModifier     = 1,
  defaultmissiontype = [[Standby]],
  description        = [[All-Terrain Siege Assault Kbot]],
  designation        = [[ARM-HBM]],
  energyMake         = 7.5,
  energyStorage      = 0,
  energyUse          = 7.5,
  explodeAs          = [[MINE_NUKE]],
  firestandorders    = 1,
  footprintX         = 4,
  footprintZ         = 4,
  immunetoparalyzer  = 1,
  maneuverleashlength = 640,
  mass               = 200000,
  maxDamage          = 84000,
  maxSlope           = 20,
  maxVelocity        = 1.7,
  maxWaterDepth      = 255,
  metalStorage       = 0,
  mobilestandorders  = 1,
  movementClass      = [[HTKBOT4]],
  name               = [[Raptor]],
  noAutoFire         = false,
  noChaseCategory    = [[VTOL]],
  objectName         = [[ARMRAPTOR]],
  radarDistance      = 40,
  selfDestructAs     = [[ATOMIC_BLAST]],
  shootme            = 1,
  side               = [[ARM]],
  sightDistance      = 712,
  standingfireorder  = 2,
  standingmoveorder  = 1,
  steeringmode       = 2,
  TEDClass           = [[KBOT]],
  threed             = 1,
  turnRate           = 1080,
  unitname           = [[armraptor]],
  unitnumber         = 1201,
  upright            = true,
  version            = 1.2,
  workerTime         = 0,
  wter_badtargetcategory = [[ALL]],
  zbuffer            = 1,
  weapons = {
    [1]  = {
      badTargetCategory  = [[VTOL]],
      def                = [[MECH_RAPIDLASER1]],
    },
    [3]  = {
      def                = [[TAWF_BANISHER2]],
    },
  },
}


--------------------------------------------------------------------------------

local weaponDefs = {
  MECH_RAPIDLASER1 = {
    areaOfEffect       = 24,
    avoidFeature       = false,
    beamlaser          = 1,
    beamTime           = 0.15,
    craterBoost        = 0,
    craterMult         = 0,
    explosionGenerator = [[custom:BURN]],
    fireStarter        = 10,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    name               = [[MechRapidLaser]],
    noSelfDamage       = true,
    proximityPriority  = 1.5,
    range              = 775,
    reloadtime         = 0.07,
    renderType         = 0,
    rgbColor           = [[1 0 0]],
    soundHit           = [[lasrhit1]],
    soundStart         = [[lasfirerb]],
    soundTrigger       = true,
    startsmoke         = 1,
    sweepfire          = false,
    thickness          = 2,
    tolerance          = 20000,
    turret             = true,
    weaponTimer        = 4,
    weaponType         = [[BeamLaser]],
    weaponVelocity     = 920,
    damage = {
      default            = 210,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
  TAWF_BANISHER2 = {
    areaOfEffect       = 200,
    craterBoost        = 0,
    craterMult         = 0,
    edgeEffectiveness  = 0.4,
    explosionGenerator = [[custom:VEHHVYROCKET_EXPLOSION]],
    fireStarter        = 20,
    guidance           = true,
    impulseBoost       = 0.123,
    impulseFactor      = 0.123,
    lineOfSight        = true,
    model              = [[TAWF114a]],
    name               = [[Banisher]],
    noSelfDamage       = true,
    range              = 1000,
    reloadtime         = 6,
    renderType         = 1,
    selfprop           = true,
    smokedelay         = 0.01,
    smokeTrail         = true,
    soundHit           = [[TAWF114b]],
    soundStart         = [[TAWF114a]],
    startsmoke         = 1,
    startVelocity      = 400,
    tolerance          = 9000,
    tracks             = true,
    trajectoryHeight   = 0.45,
    turnRate           = 22000,
    turret             = true,
    weaponAcceleration = 70,
    weaponTimer        = 5,
    weaponType         = [[MissileLauncher]],
    weaponVelocity     = 400,
    damage = {
      commanders         = 1000,
      default            = 4000,
      l1subs             = 5,
      l2subs             = 5,
      l3subs             = 5,
    },
  },
}
unitDef.weaponDefs = weaponDefs


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[core_corpses]],
    damage             = 11153,
    description        = [[Raptor Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 6,
    footprintZ         = 6,
    height             = 20,
    hitdensity         = 100,
    metal              = 8360,
    object             = [[vaporiser_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 10079,
    description        = [[Raptor Heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 3,
    footprintZ         = 3,
    height             = 4,
    hitdensity         = 100,
    metal              = 3181,
    object             = [[3x3d]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[All Worlds]],
  },
}
unitDef.featureDefs = featureDefs


--------------------------------------------------------------------------------

return lowerkeys({ [unitName] = unitDef })

--------------------------------------------------------------------------------
