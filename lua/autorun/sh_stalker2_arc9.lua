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

----------------------------------------------------------------------------------------------------- Sounds_Generic
sound.Add( {
    name = "Stalker2.Dry",
    channel = CHAN_ITEM,
    volume = 1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Empty_01.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.Jam",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Jam_01.mp3",
		"weapons/arc9/stalker2/generic/SFX_Jam_02.mp3",
		"weapons/arc9/stalker2/generic/SFX_Jam_03.mp3",
		"weapons/arc9/stalker2/generic/SFX_Jam_04.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.Trigger",
    channel = CHAN_ITEM,
    volume = 0.4,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Trigger_01.mp3",
		"weapons/arc9/stalker2/generic/SFX_Trigger_02.mp3",
		"weapons/arc9/stalker2/generic/SFX_Trigger_03.mp3",
		"weapons/arc9/stalker2/generic/SFX_Trigger_04.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.RattleHeavy",
    channel = CHAN_ITEM,
    volume = 0.1,
    level = 60,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_01.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_02.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_03.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_04.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_05.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_06.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_07.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_08.mp3",
		"weapons/arc9/stalker2/generic/SFX_Rattle_Heavy_09.mp3",
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
        "weapons/arc9/stalker2/cloth/SFX_PlayerClothes_01.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_02.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_03.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_04.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_05.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_06.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_07.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_08.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_09.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_10.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_11.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.ARC9Cloth2",
    channel = CHAN_ITEM,
    volume = 0.35,
    level = 65,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/cloth/SFX_PlayerClothes_12.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_14.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_15.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_17.mp3",
		"weapons/arc9/stalker2/cloth/SFX_PlayerClothes_18.mp3",
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
        "weapons/arc9/stalker2/shot_toz/Fire_01.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_02.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_03.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZFireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_toz/Fire_Outdoors_01.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_Outdoors_02.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_Outdoors_03.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZFireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_toz/Fire_Indoors_01.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_Indoors_02.mp3",
		"weapons/arc9/stalker2/shot_toz/Fire_Indoors_03.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZSlideBack",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Back_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Back_02.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZSlideForward",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Forward_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Slide_Forward_02.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZClick",
    channel = CHAN_BODY,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_Click.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagOut1",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Calm_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Calm_02.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagIn1",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Calm_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Calm_02.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagOut2",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Tactical_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagIn_Tactical_02.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.TOZMagIn2",
    channel = CHAN_STATIC,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Tactical_01.mp3",
		"weapons/arc9/stalker2/shot_toz/SFX_TOZ34_MagOut_Tactical_02.mp3",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_AK74
sound.Add( {
    name = "Stalker2.AK74Fire",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/fire_core_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_core_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_core_3.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_core_4.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_core_5.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireSil",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/fire_sil_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_sil_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/fire_sil_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/outdoors_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/outdoors_7.mp3",
		"weapons/arc9/stalker2/ar_ak74/outdoors_5.mp3",
		"weapons/arc9/stalker2/ar_ak74/outdoors_6.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74FireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/indoors_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/indoors_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/indoors_3.mp3",
		"weapons/arc9/stalker2/ar_ak74/indoors_4.mp3",
		"weapons/arc9/stalker2/ar_ak74/indoors_5.mp3",
		"weapons/arc9/stalker2/ar_ak74/indoors_6.mp3",
    }
} )

sound.Add( {
    name = "Stalker2.AK74MagOutCalm",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOutCalm_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagOut_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagIn_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74MagTap",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagTap_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_MagTap_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideIn_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideOut_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideJamIn",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_1.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_2.mp3",
		"weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamIn_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74SlideJamOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_SlideJamOut_1.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.AK74Break",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_ak74/SFX_AK74_BreakBullet_1.mp3",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_GROZA
sound.Add( {
    name = "Stalker2.GrozaFire",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/fire_core_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/fire_core_2.mp3",
		"weapons/arc9/stalker2/ar_Groza/fire_core_3.mp3",
		"weapons/arc9/stalker2/ar_Groza/fire_core_4.mp3",
		"weapons/arc9/stalker2/ar_Groza/fire_core_5.mp3",
    }
} )
-- sound.Add( {
    -- name = "Stalker2.GrozaFireSil",
    -- volume = 1,
    -- level = 125,
    -- pitch = {95, 110},
    -- sound = {
        -- "weapons/arc9/stalker2/ar_Groza/fire_sil_1.mp3",
		-- "weapons/arc9/stalker2/ar_Groza/fire_sil_2.mp3",
		-- "weapons/arc9/stalker2/ar_Groza/fire_sil_3.mp3",
    -- }
-- } )

sound.Add( {
    name = "Stalker2.GrozaMagInOutro",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_Outro.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_2.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagOut_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_2.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagIn_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagInBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_In_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_In_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaMagOutBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_Out_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_MagBig_Out_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_2.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideBack_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideForward_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideForward_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideHit_1.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Back.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamEffort",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_1.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_2.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_3.mp3",
		"weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Effort_4.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaSlideJamOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_SlideJam_Froward.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaGPOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_GP_Out.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.GrozaGPIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_Groza/SFX_Grim_GP_In.mp3",
    }
} )

----------------------------------------------------------------------------------------------------- Sounds_M416
sound.Add( {
    name = "Stalker2.M416Fire",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/fire_core_1.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_core_2.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_core_3.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_core_4.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416FireSil",
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/fire_sil_1.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_sil_2.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_sil_3.mp3",
		"weapons/arc9/stalker2/ar_M416/fire_sil_4.mp3",
    }
} )

sound.Add( {
    name = "Stalker2.M416MagInOutro",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagInIncreased_Outro.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagInOutroBig",
    channel = CHAN_ITEM,
    volume = 1,
    level = 70,
    pitch = {90, 95},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagInIncreased_Outro.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagIn_Intro.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagOut",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_1.mp3",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagOutBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {85, 90},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_1.mp3",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_MagOut_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416MagInBig",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {80, 90},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_MagIn_Intro.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideBack_1.mp3",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_SlideBack_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideOut",
    channel = CHAN_BODY,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideForward_1.mp3",
		"weapons/arc9/stalker2/ar_M416/SFX_M416_SlideForward_2.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.M416SlideHit",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 70,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/ar_M416/SFX_M416_SlideHit.mp3",
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
        "weapons/arc9/stalker2/shot_spsa/fire_core_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/fire_core_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/fire_core_3.mp3",
		"weapons/arc9/stalker2/shot_spsa/fire_core_4.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSAFireOutdoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_01.mp3",
		"weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_02.mp3",
		"weapons/arc9/stalker2/shot_spsa/Fire_Outdoors_03.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSAFireIndoors",
    channel = CHAN_STREAM,
    volume = 1,
    level = 125,
    pitch = {95, 110},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/Fire_Indoors_01.mp3",
		"weapons/arc9/stalker2/shot_spsa/Fire_Indoors_02.mp3",
		"weapons/arc9/stalker2/shot_spsa/Fire_Indoors_03.mp3",
    }
} )

sound.Add( {
    name = "Stalker2.SPSAMagIn",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagIn_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSAMagInTac",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_3.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_4.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_5.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_6.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_7.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_MagInTac_8.mp3",
    }
} )

sound.Add( {
    name = "Stalker2.SPSASlideBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideBack_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideForward_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideHit",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideHit.mp3",
    }
} )

sound.Add( {
    name = "Stalker2.SPSASlideJamBack",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamBack.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideEffort",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_3.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamEffort_4.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSABreakBullet",
    channel = CHAN_ITEM,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_1.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_2.mp3",
		"weapons/arc9/stalker2/shot_spsa/SFX_SPSA_BreakBullet_3.mp3",
    }
} )
sound.Add( {
    name = "Stalker2.SPSASlideForward",
    channel = CHAN_WEAPON,
    volume = 1,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/stalker2/shot_spsa/SFX_SPSA_SlideJamForward_1.mp3",
    }
} )