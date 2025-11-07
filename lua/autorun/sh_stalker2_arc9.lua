AddCSLuaFile()

--[[
-----------------------------------------------------------------------------------------------------
Hooks
-----------------------------------------------------------------------------------------------------
]]

local WeaponTable = {
	"arc9_stalker2_ar_ak74",
	"arc9_stalker2_ar_dnipro",
	"arc9_stalker2_ar_grom",
	"arc9_stalker2_ar_m416",
	"arc9_stalker2_ar_tar21",
	"arc9_stalker2_ar_val",
	
	"arc9_stalker2_pt_pm",
	"arc9_stalker2_pt_rhino",
	
	"arc9_stalker2_shot_boomstick",
	"arc9_stalker2_shot_m860",
	"arc9_stalker2_shot_spas",
	
	"arc9_stalker2_sr_threeliner",
}
	
hook.Add("PlayerCanPickupWeapon", "HookStalker2ResetGunHealth", function(ply, wep)
    if not IsValid(wep) or not IsValid(ply) then return true end
	
	local class = wep:GetClass()
	for _, classname in pairs(WeaponTable) do
		if class == classname then
			if ply:HasWeapon(class) then
				local CurWpn = ply:GetWeapon(class)
				if IsValid(CurWpn) then
				 CurWpn.GunHealth = CurWpn.GunHealthMax
				end
			end
		end
	end
	
    return true
end)

--[[
-----------------------------------------------------------------------------------------------------
Subcategories
-----------------------------------------------------------------------------------------------------
]]
-- list.Set("WeaponTreeIcons", "EFT", "logo16/logo_eftmedkit_16.png")
-- list.Set("WeaponTreeIcons", "EFT.Drugs", "logo16/logo_eftdrug_16.png")
-- list.Set("WeaponTreeIcons", "EFT.Stimulants", "logo16/logo_eftstim_16.png")
-- list.Set("WeaponTreeIcons", "EFT.Medkits", "logo16/logo_eftmedkit_16.png")
-- list.Set("WeaponTreeIcons", "EFT.Injury Treatment", "logo16/logo_eftinjury_16.png")

-- list.Set("WeaponTreeThumbnails", "EFT.Drugs", "entities/weapon_eft_augmentin.png")
-- list.Set("WeaponTreeThumbnails", "EFT.Stimulants", "entities/weapon_eft_injectoradrenaline.png")
-- list.Set("WeaponTreeThumbnails", "EFT.Medkits", "entities/weapon_eft_afak.png")
-- list.Set("WeaponTreeThumbnails", "EFT.Injury Treatment", "entities/weapon_eft_surgicalkit.png")

--[[
-----------------------------------------------------------------------------------------------------
Particle Cache
-----------------------------------------------------------------------------------------------------
]]

	game.AddParticles("particles/gaus.pcf")
   
	PrecacheParticleSystem("gauss_gun_raiden_0")
	PrecacheParticleSystem("gauss_gun_raiden_1")
	PrecacheParticleSystem("gauss_gun_raiden_2")
	PrecacheParticleSystem("gauss_gun_raiden_3")
	PrecacheParticleSystem("gauss_gun_raiden_4")
	PrecacheParticleSystem("gauss_gun_raiden_5")
	PrecacheParticleSystem("gauss_muzzle")
	PrecacheParticleSystem("gauss_muzzle_glow")
	PrecacheParticleSystem("matin_ga_warp")

--[[
-----------------------------------------------------------------------------------------------------
Sound Tables
-----------------------------------------------------------------------------------------------------
]]

-- Sounds_Generic
-- Sounds_Cloth
-- Sounds_Tails
-- Sounds_TOZ34
-- Sounds_AK74
-- Sounds_GROZA
-- Sounds_M416
-- Sounds_SPSA
-- Sounds_Fora21
-- Sounds_PM
-- Sounds_Gauss
-- Sounds_ASVAL
-- Sounds_Saiga
-- Sounds_Boomstick
-- Sounds_DniPro
-- Sounds_M860
-- Sounds_Rhino
-- Sounds_Threeliner

----------------------------------------------------------------------------------------------------- Sounds_Generic
sound.Add( {
    name = "Stalker2.Dry",
    channel = CHAN_BODY,
    volume = 1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Empty_01.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.Jam",
    channel = CHAN_WEAPON,
    volume = 1, 
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Jam_01.ogg",
		"weapons/arc9/stalker2/generic/SFX_Jam_02.ogg",
		"weapons/arc9/stalker2/generic/SFX_Jam_03.ogg",
		"weapons/arc9/stalker2/generic/SFX_Jam_04.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ARTrigger",
    channel = CHAN_ITEM,
    volume = 0.5,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/S_AR_Trigger_01 (SFX).ogg",
		"weapons/arc9/stalker2/generic/S_AR_Trigger_02 (SFX).ogg",
		"weapons/arc9/stalker2/generic/S_AR_Trigger_03 (SFX).ogg",
		"weapons/arc9/stalker2/generic/S_AR_Trigger_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ARChangelevel",
    channel = CHAN_ITEM,
    volume = 0.5,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/S_AR_ChangeLevel_01 (SFX).ogg",
		"weapons/arc9/stalker2/generic/S_AR_ChangeLevel_02 (SFX).ogg",
		"weapons/arc9/stalker2/generic/S_AR_ChangeLevel_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ArRattleWeak",
    channel = CHAN_STATIC,
    volume = 0.1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Weak_07 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ArRattleMedium",
    channel = CHAN_STATIC,
    volume = 0.1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_07 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_08 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_09 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_10 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_11 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Medium_12 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ArRattleStrong",
    channel = CHAN_STATIC,
    volume = 0.1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_07 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_08 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_09 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_10 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_11 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_12 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_13 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_14 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/ar/S_AR_SU_Rattle_Strong_15 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SgRattleWeak",
    channel = CHAN_STATIC,
    volume = 0.2,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_07 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_08 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_09 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Weak_10 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SgRattleMedium",
    channel = CHAN_STATIC,
    volume = 0.5,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_07 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_08 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_09 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Medium_10 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SgRattleStrong",
    channel = CHAN_STATIC,
    volume = 0.2,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_01 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_02 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_03 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_04 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_05 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_06 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_07 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_08 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_09 (SFX).ogg",
		"weapons/arc9/stalker2/rattle/sg/S_SG_Rattle_Strong_10 (SFX).ogg",
    }
} )


----------------------------------------------------------------------------------------------------- Sounds_Cloth
sound.Add( {
    name = "Stalker2.ARC9Cloth",
    channel = CHAN_ITEM,
    volume = 0.25,
    level = 65,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/cloth/SFX_PlayerClothes_01.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_02.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_03.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_05.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_07.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_09.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_10.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ARC9Cloth2",
    channel = CHAN_STREAM,
    volume = 1,
    level = 65,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/cloth/SFX_PlayerClothes_12.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_14.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_15.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_17.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_18.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Tails

sound.Add( {
    name = "Stalker2.ExtArAClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_AR_Tail_Ext_A_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_A_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_A_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_A_Close_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ExtArBClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_AR_Tail_Ext_B_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_B_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_B_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_B_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtArCClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_AR_Tail_Ext_C_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_C_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_C_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Ext_C_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.IntArMedium",
    channel = CHAN_STREAM,
    volume = 0.5,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_05 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_06 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_AR_Medium_07 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.TailArSilenced",
    channel = CHAN_STREAM,
    volume = 0.5,
    level = 115,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_05 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_06 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_07 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_AR_Tail_Silenced_08 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtHGAClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_A_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_A_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_A_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_A_Close_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ExtHGBClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_B_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_B_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_B_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_B_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtHGDClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_D_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_D_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_D_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_D_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtHGEClose",
    channel = CHAN_STREAM,
    volume = 0.35,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_E_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_E_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_E_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_Outdoor_E_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.IntHGMedium",
    channel = CHAN_STREAM,
    volume = 0.5,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/Tail_Int_SMG_HG_Large_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SMG_HG_Large_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SMG_HG_Large_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SMG_HG_Large_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SMG_HG_Large_05 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.TailHGSilenced",
    channel = CHAN_STREAM,
    volume = 0.5,
    level = 115,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_05 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_06 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_07 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_08 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_09 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_10 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_11 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_HG_Tail_B_Outdoor_Silenced_12 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtSrSil",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_05 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_06 (SFX).ogg",
		"weapons/arc9/stalker2/tails/SR_Tails_Ext_Silenced_07 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.IntSrLarge",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/Tail_Int_SR_Large_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SR_Large_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SR_Large_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SR_Large_04 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SR_Large_05 (SFX).ogg",
		"weapons/arc9/stalker2/tails/Tail_Int_SR_Large_06 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtAClose",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_A_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_A_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_A_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_A_Close_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ExtBClose",
    channel = CHAN_STREAM,
    volume = 1,
    level = 115,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_B_Close_01 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_B_Close_02 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_B_Close_03 (SFX).ogg",
		"weapons/arc9/stalker2/tails/S_SR_Tail_Outdoor_B_Close_04 (SFX).ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_TOZ34
sound.Add( {
    name = "Stalker2.TOZFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_toz/Fire_01.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_02.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_03.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.TOZSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Back_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Back_02.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Forward_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Forward_02.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZClick",
    channel = CHAN_BODY,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Click.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagOut1",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Calm_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Calm_02.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagIn1",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Calm_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Calm_02.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagOut2",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Tactical_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Tactical_02.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagIn2",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Tactical_01.ogg",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Tactical_02.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_AK74
sound.Add( {
    name = "Stalker2.AK74Fire",
	channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireSil",
	channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/fire_sil_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_sil_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_sil_3.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.AK74MagOutCalm",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagTap",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagTap_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagTap_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideJamIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideJamOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamOut_1.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74Break",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_BreakBullet_1.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_GROZA
sound.Add( {
    name = "Stalker2.GrozaFire",
	channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaFireSil",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/fire_sil_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_sil_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_sil_3.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_sil_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.GrozaMagInOutro",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagInBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_In_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_In_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagOutBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_Out_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_Out_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideForward_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideForward_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideHit_1.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Back.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamEffort",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_3.ogg",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Froward.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaGPOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_GP_Out.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaGPIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_GP_In.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.GLLaunch",
    channel = CHAN_STATIC,
    volume = 1,
    level = 95,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/attachments/S_GLaunch_Shot_01 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_GLaunch_Shot_02 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_GLaunch_Shot_03 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_GLaunch_Shot_04 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_GLaunch_Shot_05 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_GLaunch_Shot_06 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M320Intro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/attachments/S_Attachments_M320_Intro_01 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Intro_02 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Intro_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M320Outro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/attachments/S_Attachments_M320_Outro_01 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Outro_02 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Outro_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M320Pin",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/attachments/S_Attachments_M320_Pin_01 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Pin_02 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Pin_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M320Shell",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/attachments/S_Attachments_M320_Shell_01 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Shell_02 (SFX).ogg",
		"weapons/arc9/stalker2/attachments/S_Attachments_M320_Shell_03 (SFX).ogg",
    }
} )




----------------------------------------------------------------------------------------------------- Sounds_M416
sound.Add( {
    name = "Stalker2.M416Fire",
	channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_core_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416FireSil",
	channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/fire_sil_1.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_sil_2.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_sil_3.ogg",
		"weapons/arc9/stalker2/ar_M416/fire_sil_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.M416MagInOutro",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagInIncreased_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagInOutroBig",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {90, 95},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagInIncreased_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagIn_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_1.ogg",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagOutBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {85, 90},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_1.ogg",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagInBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {80, 90},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagIn_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideBack_1.ogg",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_SlideBack_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideOut",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideForward_1.ogg",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_SlideForward_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideHit.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_SPSA
sound.Add( {
    name = "Stalker2.SPSAFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/fire_core_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/fire_core_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/fire_core_3.ogg",
		"weapons/arc9/stalker2/shot_spsa/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SPSAMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSAMagInTac",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_3.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_4.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_5.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_6.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_7.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_8.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SPSASlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideHit",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideHit.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SPSASlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamBack.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideEffort",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_3.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSABreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_1.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_2.ogg",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamForward_1.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Fora21
sound.Add( {
    name = "Stalker2.ForaFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_core_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaFireSil",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/fire_sil_1.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_sil_2.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_sil_3.ogg",
		"weapons/arc9/stalker2/ar_tar21/fire_sil_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ForaMagInIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_MagIn_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaMagInIntroLow",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {80, 85},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_MagIn_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaMagInOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_MagIn_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaMagInOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_MagOut.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ForaSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_Slide_Back.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_Slide_Forward.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ForaSlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_SlideJam_Back.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaSlideJamEffort",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_SlideJam_Effort_1.ogg",
		"weapons/arc9/stalker2/ar_tar21/SFX_Fora_SlideJam_Effort_2.ogg",
		"weapons/arc9/stalker2/ar_tar21/SFX_Fora_SlideJam_Effort_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ForaSlideJamForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_tar21/SFX_Fora_SlideJam_Forward.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_PM
sound.Add( {
    name = "Stalker2.PmFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/pt_pm/fire_core_1.ogg",
		"weapons/arc9/stalker2/pt_pm/fire_core_2.ogg",
		"weapons/arc9/stalker2/pt_pm/fire_core_3.ogg",
		"weapons/arc9/stalker2/pt_pm/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.PmMagPullIncreased",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_IncreasedMagPull_1.ogg",
		"weapons/arc9/stalker2/pt_pm/SFX_PM_IncreasedMagPull_2.ogg",
		"weapons/arc9/stalker2/pt_pm/SFX_PM_IncreasedMagPull_3.ogg",
		"weapons/arc9/stalker2/pt_pm/SFX_PM_IncreasedMagPull_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_MagIn_1.ogg",
		"weapons/arc9/stalker2/pt_pm/SFX_PM_MagIn_2.ogg",
		"weapons/arc9/stalker2/pt_pm/SFX_PM_MagIn_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmMagOutIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_MagOut_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmMagOutOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_MagOut_Outro.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.PmSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_SlideForward.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmSlideForwardLow",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {85, 90},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_SlideForward.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.PmSlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_SlideJam_Back.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmSlideJamEffort",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {90, 105},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_SlideJam_Effort.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.PmBreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_pm/SFX_PM_BreakBullet.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Gauss
sound.Add( {
    name = "Stalker2.GaussFire",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 150,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/fire_core_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_core_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_core_3.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_core_4.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_core_5.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_core_6.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussFireOutdoors",
    channel = CHAN_STATIC,
    volume = 0.44,
    level = 150,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/outdoors_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/outdoors_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/outdoors_3.ogg",
		"weapons/arc9/stalker2/sr_gauss/outdoors_4.ogg",
		"weapons/arc9/stalker2/sr_gauss/outdoors_5.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussFireIndoors",
    channel = CHAN_STATIC,
    volume = 0.44,
    level = 150,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/indoors_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/indoors_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/indoors_3.ogg",
		"weapons/arc9/stalker2/sr_gauss/indoors_4.ogg",
		"weapons/arc9/stalker2/sr_gauss/indoors_5.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussFireWindup",
    channel = CHAN_STREAM,
    volume = 1,
    level = 85,
    pitch = {98, 103},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/fire_windup_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_windup_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_windup_3.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_windup_4.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_windup_5.ogg",
		"weapons/arc9/stalker2/sr_gauss/fire_windup_6.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.GaussMechLast",
    channel = CHAN_ITEM,
    volume = 1,
    level = 75,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_MechLast.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.GaussMagOutButton",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_MagOut_Button.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussMagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_MagOut.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussMagInIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_MagIn_Intro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussMagInOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_MagIn_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussCock",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_Cock.ogg",
    }
} )


sound.Add( {
    name = "Stalker2.GaussTeethReload",
    channel = CHAN_STATIC,
    volume = 1,
    level = 70,
    pitch = {93, 112},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_3.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_4.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_5.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReload_6.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussTeethLast",
    channel = CHAN_STATIC,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethLast_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethLast_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethLast_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussTeethReset",
    channel = CHAN_STATIC,
    volume = 0.5,
    level = 70,
    pitch = {97, 105},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_TeethReset.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.GaussJamTeeth",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_JamTeeth_1.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_JamTeeth_2.ogg",
		"weapons/arc9/stalker2/sr_gauss/SFX_Gauss_JamTeeth_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussJamOff",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_JamSwitchOff.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.GaussJamOn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/sr_gauss/SFX_Gauss_JamSwitchOn.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_ASVAL
sound.Add( {
    name = "Stalker2.ASVALFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 115,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_asval/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_asval/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_asval/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_asval/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ASVALMagIn",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagIn_1.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagIn_2.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALMagOut",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_1.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_2.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALMagOutOutro",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Outro_1.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Outro_2.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Outro_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALMagOutIntro",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Intro_1.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Intro_2.ogg",
		"weapons/arc9/stalker2/ar_asval/SFX_ASVAL_MagOut_Intro_3.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ASVALSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_SlideBack.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_SlideForward.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ASVALSlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_SlideJam_Back.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALSlideJamHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_SlideHit.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ASVALBreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_asval/SFX_ASVAL_BreakBullet.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Saiga
sound.Add( {
    name = "Stalker2.SaigaFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/fire_core_1.ogg",
		"weapons/arc9/stalker2/shot_saiga/fire_core_2.ogg",
		"weapons/arc9/stalker2/shot_saiga/fire_core_3.ogg",
		"weapons/arc9/stalker2/shot_saiga/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SaigaMagInIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagIn_Intro_1.ogg",
		"weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagIn_Intro_2.ogg",
		"weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagIn_Intro_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SaigaMagInOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagIn_Outro.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SaigaMagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagOut_1.ogg",
		"weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagOut_2.ogg",
		"weapons/arc9/stalker2/shot_saiga/SFX_Saiga_MagOut_3.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SaigaSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_SlideBack.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SaigaSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_SlideForward.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.SaigaSlideJamEffort",
    channel = CHAN_WEAPON,
    volume = 0.5,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_JamShake.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SaigaBreakBullet",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_saiga/SFX_Saiga_BreakBullet.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Boomstick
sound.Add( {
    name = "Stalker2.BoomstickFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/fire_core_1.ogg",
		"weapons/arc9/stalker2/shot_boomstick/fire_core_2.ogg",
		"weapons/arc9/stalker2/shot_boomstick/fire_core_3.ogg",
		"weapons/arc9/stalker2/shot_boomstick/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.BoomstickMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_MagIn_1.ogg",
		"weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_MagIn_2.ogg",
		"weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_MagIn_3.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.BoomstickSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideBack_1.ogg",
		"weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideBack_2.ogg",
		"weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideBack_3.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.BoomstickSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideForward.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.BoomstickSlideHit",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideHit.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.BoomstickSlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideJamBack.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.BoomstickSlideJamForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_SlideJamForward.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.BoomstickBreakBullet",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_boomstick/SFX_Boomstick_BreakBullet.ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_DniPro
sound.Add( {
    name = "Stalker2.DniProFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {90, 120},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/fire_1.ogg",
		"weapons/arc9/stalker2/ar_dnipro/fire_2.ogg",
		"weapons/arc9/stalker2/ar_dnipro/fire_3.ogg",
		"weapons/arc9/stalker2/ar_dnipro/fire_4.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProFireSil",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {90, 120},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/sil_1.ogg",
		"weapons/arc9/stalker2/ar_dnipro/sil_2.ogg",
		"weapons/arc9/stalker2/ar_dnipro/sil_3.ogg",
		"weapons/arc9/stalker2/ar_dnipro/sil_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.DniProMagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_Out_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_Out_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_Out_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProMagInIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Intro_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Intro_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Intro_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Intro_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProMagInOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Outro_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Outro_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Outro_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Mag_In_Outro_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.DniProSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Back_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Back_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Back_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Back_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProSlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Forward_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Forward_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Forward_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_Slide_Forward_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.DniProJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_04 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_05 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_06 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_07 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Back_08 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProJamBreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_BreakBullet_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_BreakBullet_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_BreakBullet_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_BreakBullet_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.DniProSlideJam",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Effort_01 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Effort_02 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Effort_03 (SFX).ogg",
		"weapons/arc9/stalker2/ar_dnipro/S_Dnipro_SlideJam_Effort_04 (SFX).ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_M860
sound.Add( {
    name = "Stalker2.M860Fire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_m860/fire_core_1.ogg",
		"weapons/arc9/stalker2/shot_m860/fire_core_2.ogg",
		"weapons/arc9/stalker2/shot_m860/fire_core_3.ogg",
		"weapons/arc9/stalker2/shot_m860/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.M860MagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_03 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M860MagInTac",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_Tactical_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_Tactical_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_Tactical_03 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Mag_In_Tactical_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.M860SlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_Slide_Back_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Slide_Back_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Slide_Back_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M860SlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_Slide_Forward_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_Slide_Forward_02 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M860SlideJamBack",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Back_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Back_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Back_03 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.M860SlideEffort",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Effort_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Effort_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Effort_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M860BreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_BreakBullet_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_BreakBullet_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_BreakBullet_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.M860Shake",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Shake_01 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Shake_02 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Shake_03 (SFX).ogg",
		"weapons/arc9/stalker2/shot_m860/S_M860_SlideJam_Shake_04 (SFX).ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Rhino
sound.Add( {
    name = "Stalker2.rhinoFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/fire_core_1.ogg",
		"weapons/arc9/stalker2/pt_rhino/fire_core_2.ogg",
		"weapons/arc9/stalker2/pt_rhino/fire_core_3.ogg",
		"weapons/arc9/stalker2/pt_rhino/fire_core_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.RhinoBulletInColision",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_001 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_002 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_003 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_004 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_005 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Colision_In_006 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoCylinderRoll",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Cylinder_Roll_Short_01 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Cylinder_Roll_Short_02 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_Cylinder_Roll_Short_03 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoBulletIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_001 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_002 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_003 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_004 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_005 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullet_In_Cylinder_006 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoBulletOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullets_Out_Calm_01 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullets_Out_Calm_02 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullets_Out_Calm_03 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Bullets_Out_Calm_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.RhinoCylinderIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_In_01 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_In_02 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_In_03 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_In_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoCylinderOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_Out_01 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_Out_02 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_Out_03 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_Out_04 (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.RhinoCylinderRollLong",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {85, 90},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Cylinder_Roll_Long (SFX).ogg",
    }
} )

sound.Add( {
    name = "Stalker2.RhinoBulletInCalm",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_In_Calm_01 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_In_Calm_02 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_In_Calm_03 (SFX).ogg",
		"weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_In_Calm_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoBulletOutEmpty",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {90, 105},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_Out_Empty_Calm (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoMagTap",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Mag_Tap (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoTriggerOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Trigger_Out (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoTriggerTap",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_Trigger_Tap (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RhinoTriggerJam",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/pt_rhino/S_Raging_Bull_TriggerJam (SFX).ogg",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_Threeliner
sound.Add( {
    name = "Stalker2.threelinerFire",
    channel = CHAN_STATIC,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/fire_threeliner_1.ogg",
		"weapons/arc9/stalker2/sr_threeliner/fire_threeliner_2.ogg",
		"weapons/arc9/stalker2/sr_threeliner/fire_threeliner_3.ogg",
		"weapons/arc9/stalker2/sr_threeliner/fire_threeliner_4.ogg",
    }
} )

sound.Add( {
    name = "Stalker2.ThreeLinerMagin",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerMagInIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Intro_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Intro_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Intro_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Intro_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerMagInOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Outro_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Outro_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Outro_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Outro_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerTactical",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_04 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_06 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_In_Tactical_08 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerMagOutIntro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Intro_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Intro_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Intro_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Intro_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerMagOutOutro",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Outro_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Outro_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Outro_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Mag_Out_Outro_04 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerSlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_04 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_05 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_06 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_07 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Back_08 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerSlideDown",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_04 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_05 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_06 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_07 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Down_08 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerUp",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_04 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_05 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_06 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_07 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Up_08 (SFX).ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ThreeLinerForward",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_04 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_05 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_06 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_07 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Slide_Forward_08 (SFX).ogg",
    }
} )sound.Add( {
    name = "Stalker2.ThreeLinerWeaponHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Weapon_Hit_01 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Weapon_Hit_02 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Weapon_Hit_03 (SFX).ogg",
		"weapons/arc9/stalker2/sr_threeliner/S_ThreeLine_Weapon_Hit_04 (SFX).ogg",
    }
} )
