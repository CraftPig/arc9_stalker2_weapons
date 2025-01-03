AddCSLuaFile()

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
Sound Tables
-----------------------------------------------------------------------------------------------------
]]

-- Sounds_Generic
-- Sounds_Cloth
-- Sounds_TOZ34
-- Sounds_AK74
-- Sounds_GROZA
-- Sounds_M416
-- Sounds_SPSA
-- Sounds_Fora21
-- Sounds_PM

----------------------------------------------------------------------------------------------------- Sounds_Generic
sound.Add( {
    name = "Stalker2.Dry",
    channel = CHAN_ITEM,
    volume = 1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Empty_01.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.Jam",
    channel = CHAN_ITEM,
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
    name = "Stalker2.Trigger",
    channel = CHAN_ITEM,
    volume = 0.4,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Trigger_01.ogg",
		"weapons/arc9/stalker2/generic/SFX_Trigger_02.ogg",
		"weapons/arc9/stalker2/generic/SFX_Trigger_03.ogg",
		"weapons/arc9/stalker2/generic/SFX_Trigger_04.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.RattleHeavy",
    channel = CHAN_ITEM,
    volume = 0.1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_01.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_02.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_03.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_04.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_05.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_06.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_07.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_08.ogg",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_09.ogg",
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
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_04.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_05.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_06.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_07.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_08.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_09.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_10.ogg",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_11.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.ARC9Cloth2",
    channel = CHAN_ITEM,
    volume = 0.35,
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

----------------------------------------------------------------------------------------------------- Sounds_TOZ34
sound.Add( {
    name = "Stalker2.TOZFire",
    channel = CHAN_WEAPON,
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
    name = "Stalker2.TOZFireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_toz/Fire_Outdoors_01.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_Outdoors_02.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_Outdoors_03.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZFireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_toz/Fire_Indoors_01.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_Indoors_02.ogg",
		"weapons/arc9/stalker2/shot_toz/Fire_Indoors_03.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.TOZSlideBack",
    channel = CHAN_ITEM,
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
    channel = CHAN_ITEM,
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
    channel = CHAN_WEAPON,
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
    channel = CHAN_WEAPON,
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
    channel = CHAN_WEAPON,
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
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_4.ogg",
		"weapons/arc9/stalker2/ar_ak74/fire_core_5.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireSil",
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
    name = "Stalker2.AK74FireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/outdoors_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/outdoors_7.ogg",
		"weapons/arc9/stalker2/ar_ak74/outdoors_5.ogg",
		"weapons/arc9/stalker2/ar_ak74/outdoors_6.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/indoors_1.ogg",
		"weapons/arc9/stalker2/ar_ak74/indoors_2.ogg",
		"weapons/arc9/stalker2/ar_ak74/indoors_3.ogg",
		"weapons/arc9/stalker2/ar_ak74/indoors_4.ogg",
		"weapons/arc9/stalker2/ar_ak74/indoors_5.ogg",
		"weapons/arc9/stalker2/ar_ak74/indoors_6.ogg",
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
    channel = CHAN_BODY,
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
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/fire_core_1.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_2.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_3.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_4.ogg",
		"weapons/arc9/stalker2/ar_Groza/fire_core_5.ogg",
    }
} )
-- sound.Add( {
    -- name = "Stalker2.GrozaFireSil",
    -- volume = 1,
    -- level = 125,
    -- pitch = {95, 110},
    -- sound = {
        -- "weapons/arc9/stalker2/ar_Groza/fire_sil_1.ogg",
		-- "weapons/arc9/stalker2/ar_Groza/fire_sil_2.ogg",
		-- "weapons/arc9/stalker2/ar_Groza/fire_sil_3.ogg",
    -- }
-- } )

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

----------------------------------------------------------------------------------------------------- Sounds_M416
sound.Add( {
    name = "Stalker2.M416Fire",
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
    channel = CHAN_WEAPON,
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
    name = "Stalker2.SPSAFireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_01.ogg",
		"weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_02.ogg",
		"weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_03.ogg",
    }
} )
sound.Add( {
    name = "Stalker2.SPSAFireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/Fire_Indoors_01.ogg",
		"weapons/arc9/stalker2/shot_spsa/Fire_Indoors_02.ogg",
		"weapons/arc9/stalker2/shot_spsa/Fire_Indoors_03.ogg",
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
    channel = CHAN_WEAPON,
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

----------------------------------------------------------------------------------------------------- Sounds_Pm21
sound.Add( {
    name = "Stalker2.PmFire",
    channel = CHAN_WEAPON,
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