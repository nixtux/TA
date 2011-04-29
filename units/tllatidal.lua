-- UNITDEF -- TLLATIDAL --
--------------------------------------------------------------------------------

local unitName = "tllatidal"

--------------------------------------------------------------------------------

local unitDef = {
  activateWhenBuilt  = true,
  bmcode             = 0,
  buildAngle         = 8192,
  buildCostEnergy    = 1287,
  buildCostMetal     = 485,
  builder            = false,
  buildTime          = 3255,
  category           = [[TLL ENERGY LEVEL2 NOWEAPON NOTAIR NOTSUB]],
  copyright          = [[Copyright 1997 Humongous Entertainment. All rights reserved.]],
  corpse             = [[dead]],
  description        = [[Produces Energy]],
  designation        = [[TL-atd]],
  downloadable       = 1,
  energyUse          = -85,
  explodeAs          = [[ESTOR_BUILDINGEX]],
  footprintX         = 4,
  footprintZ         = 4,
  frenchdescription  = [[Produit de l'énergie]],
  frenchname         = [[Centrale marémotrice sous-marine]],
  germandescription  = [[Liefert Energie]],
  germanname         = [[Verb. Unterwasser Gezeitenkraftwerk]],
  maxDamage          = 1631,
  maxSlope           = 10,
  maxWaterDepth      = 255,
  minWaterDepth      = 15,
  name               = [[Underwater Advanced Tidal Generator]],
  noAutoFire         = false,
  objectName         = [[tllatidal]],
  onoffable          = true,
  radarDistance      = 0,
  selfDestructAs     = [[ESTOR_BUILDING]],
  side               = [[TLL]],
  sightDistance      = 110,
  TEDClass           = [[ENERGY]],
  threed             = 1,
  tidalGenerator     = 1,
  unitname           = [[tllatidal]],
  unitnumber         = 880,
  version            = 3.1,
  workerTime         = 0,
  yardMap            = [[oooo oooo oooo oooo]],
  zbuffer            = 1,
  sounds = {
    canceldestruct     = [[cancel2]],
    underattack        = [[warning1]],
    count = {
      [[count6]],
      [[count5]],
      [[count4]],
      [[count3]],
      [[count2]],
      [[count1]],
    },
    select = {
      [[tidegen2]],
    },
  },
}


--------------------------------------------------------------------------------

local featureDefs = {
  dead = {
    blocking           = true,
    category           = [[tll_corpses]],
    damage             = 756,
    description        = [[Wreckage]],
    featureDead        = [[heap]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    height             = 12,
    hitdensity         = 103,
    metal              = 311,
    object             = [[tllatidal_dead]],
    reclaimable        = true,
    seqnamereclamate   = [[tree1reclamate]],
    world              = [[all]],
  },
  heap = {
    blocking           = false,
    category           = [[heaps]],
    damage             = 234,
    description        = [[Metal Shards]],
    featurereclamate   = [[smudge01]],
    footprintX         = 4,
    footprintZ         = 4,
    hitdensity         = 4,
    metal              = 120,
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
