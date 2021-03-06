
function gadget:GetInfo()
  return {
    name      = "Shockwaves",
    desc      = "",
    author    = "jK",
    date      = "Jan. 2008",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true
  }
end


if (gadgetHandler:IsSyncedCode()) then

  local SHOCK_WEAPONS = {
    --Arm
    ["armcom_arm_disintegrator"] = true,
    ["armcom1_arm_disintegrator"] = true,
    ["armcom4_arm_disintegrator1"] = true,
    ["armcom5_arm_disintegrator2"] = true,
    ["armcom6_arm_disintegrator2"] = true,
    ["armcom7_arm_disintegrator2"] = true,
    --["amortor_mortartillery"] = true, -- to small aoe
    ["armguard_armfixed_gun"] = true,
    ["armguard_armfixed_gun_high"] = true,
    ["armthund_armbomb"] = true,
    ["armcybr_arm_pidr"] = true,
    ["armpnix_armadvbomb"] = true,
    ["armsb_seaadvbomb"] = true,
    ["armblz_napalm"] = true,
    ["armshock_shocker"] = true,
    ["armshock1_shocker1"] = true,
    ["armfboy_arm_fatboy_notalaser"] = true,
    ["armfboy1_arm_fatboy_notalaser1"] = true,
    --Core
    ["corcom_arm_disintegrator"] = true,
    ["corcom1_arm_disintegrator"] = true,
    ["corcom3_arm_disintegrator1"] = true,
    ["corcom5_arm_disintegrator2"] = true,
    ["corcom6_arm_disintegrator2"] = true,
    ["corcom7_arm_disintegrator2"] = true,
    --The Lost Legacy
    ["tllcom_arm_disintegrator3"] = true,
    ["tllcom3_tll_disintegrator1"] = true,
    ["tllcom5_tll_disintegrator2"] = true,
    ["tllcom6_tll_disintegrator2"] = true,
    ["tllcom7_tll_disintegrator2"] = true,
    ["tllhtml_tll_gauss2"] = true,
    ["tlldemon_demonslayer_cannon"] = true,
  }

  --// find weapons which cause a shockwave
  for i=1,#WeaponDefs do
    local wd = WeaponDefs[i]
    if SHOCK_WEAPONS[wd.name] then
      Script.SetWatchWeapon(wd.id,true)
      SHOCK_WEAPONS[wd.id] = true
    end
  end

  function gadget:Explosion(weaponID, px, py, pz, ownerID)
    if SHOCK_WEAPONS[weaponID] then
      local wd = WeaponDefs[weaponID]
      if (wd.type == "DGun") then
        SendToUnsynced("lups_shockwave", px, py, pz, 4.0, 18, 0.13, true)
      else
        local growth = (wd.damageAreaOfEffect*1.1)/20
        SendToUnsynced("lups_shockwave", px, py, pz, growth, false)
      end
    end
    return false
  end
  
  function gadget:RecvLuaMsg(msg, id)
    if (msg == "lups shutdown") then
		SendToUnsynced("shockwave_Toggle",false,id)
	elseif (msg == "lups running") then
		SendToUnsynced("shockwave_Toggle",true,id)
	end
  end

else

  local enabled = false

  local function SpawnShockwave(_,px,py,pz, growth, life, strength, desintergrator)
    if (enabled) then
      local Lups = GG['Lups']
      if (desintergrator) then
        Lups.AddParticles('SphereDistortion',{pos={px,py,pz}, life=life, strength=strength, growth=growth})
      else
        Lups.AddParticles('ShockWave',{pos={px,py,pz}, growth=growth})
      end
    end
  end
  
  local function Toggle(_,enable,playerId)
    if (playerId == Spring.GetMyPlayerID()) then
      if enable then
	    enabled = true
	  else
	    enabled = false
	  end
	end
  end

  function gadget:Initialize()
    gadgetHandler:AddSyncAction("lups_shockwave", SpawnShockwave)
    gadgetHandler:AddSyncAction("shockwave_Toggle", Toggle)
  end

  function gadget:Shutdown()
    gadgetHandler.RemoveSyncAction("lups_shockwave")
    gadgetHandler.RemoveSyncAction("shockwave_Toggle")
  end

end