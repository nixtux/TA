-- WEAPONDEF -- CORPYRO_BLAST --
--------------------------------------------------------------------------------

local weaponName = "corpyro_blast"

--------------------------------------------------------------------------------

local weaponDef = {
	areaofeffect = 200,
	ballistic = 1,
	craterboost = 0,
	cratermult = 0,
	edgeeffectiveness = 0.5,
	explosiongenerator = [[custom:FLASH4]],
	impulseboost = 0.12300000339746,
	impulsefactor = 0.12300000339746,
	name = [[PyroBlast]],
	range = 200,
	reloadtime = 3.5999999046326,
	rendertype = 4,
	soundhit = [[xplolrg3]],
	soundstart = [[largegun]],
	turret = 1,
	weaponvelocity = 250,
	damage = {
		default = 1000,
	},
}
--------------------------------------------------------------------------------

return lowerkeys({[weaponName] = weaponDef})

--------------------------------------------------------------------------------
