AddCSLuaFile()
SWEP.Base = "weapon_template_stalker2_ar"

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_ak74")

SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "AKM-74S"
SWEP.TrueName = "AKS-74N"

SWEP.Slot = 2
SWEP.Spawnable = true

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "5.45x39mm",
	Origin = "Soviet Union",
	Year = "1974",
	Weight = "3kg (6.5lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The AKS-74 ("S"—Russian: складной; skladnoy, lit. "folding"), is a variant of the AK-74 equipped with a side-folding metal shoulder stock, designed primarily for use with air assault infantry and developed alongside the basic AK-74. The stock has a triangular shape; it lacks the folding shoulder pad found on the AKMS stock and is folded to the left side of the receiver.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/ar_ak74/v_ar_ak74.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-6, 4, -7), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-4, 4, -6), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "ar2"
SWEP.HoldTypeSprint          = "ar2"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "ar2"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "ar2"
SWEP.HoldTypeNPC 			 = "ar2"

SWEP.AnimShoot 				 = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload 			 = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload		 = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw 				 = false
SWEP.AnimMelee 				 = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee		 = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax			 = 23 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 20 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 600 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 600
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = -1,
    },
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 1950
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 1.2 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 30
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 3253
SWEP.RecoilPatternDrift = 28953 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
	0,
	-33.69,
	-26.57,
	-23.20,
	-16.89,
	-20.56,
	-23.40,
	-25.95,
	-27.88,
	-24.62,
	-28.07,
	-25.38,
	-26.57,
	-27.74,
	-31.27,
	-33.52,
	-30.96,
	-34.38,
	-31.99,
	-33.23,
	-30.52,
	-32.47,
	-30.37,
	-32.11,
	-30.01,
	-31.34,
	-28.99,
	-29.74,
	-27.47,
	-27.76
}

SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilRandomUp 						= 0.1
SWEP.RecoilRandomSide 						= 0.5

SWEP.RecoilAutoControl 						= 1.7
SWEP.RecoilAutoControlMultShooting       	= 0.25

SWEP.RecoilDissipationRate 					= 35 
SWEP.RecoilResetTime 						= 0.033
SWEP.RecoilFullResetTime 					= 0.35

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.0148 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.001 -- Applied per unit of recoil.
SWEP.SpreadMultSights			= -SWEP.Spread
SWEP.SpreadMultCrouch 			= 0.85
SWEP.SpreadMultMove 			= 1.5
SWEP.SpreadMultMidAir 			= 2.5

SWEP.RecoilModifierCap 			= SWEP.RecoilMax
SWEP.RecoilModifierCapSights 	= 0

SWEP.BarrelLength 				= 32 

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 60

SWEP.IronSights = {
    Pos = Vector(-0.0, -3, 0.8),
    Ang = Angle(-0.0, 0.2, 0),
    Magnification = 1.15,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(-0.0, -0.0, 1.0) 
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos =  Vector(-0, -0, -0)
SWEP.MovingAng =  Angle(0, -2, -6)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(0, 2, 0)
}

SWEP.CrouchPos = Vector(-1.0, -1, -0.5)
SWEP.CrouchAng = Angle(-0, -0, -10)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = false -- No sprintpos during reloads
SWEP.SprintPos = Vector(0, -0, -1.15) 
SWEP.SprintAng = Angle(15, -10, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, 5, -30)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 


SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(15, 32, 7)
SWEP.CustomizeRotateAnchor = Vector(16, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.75

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(50, -110, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_ak74/w_ar_ak74_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false -- Don't eject shell while cycling
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)		 
SWEP.ShellModel 				= "models/shells/shell_556.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_ak47" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
	[1] = "bullets",
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.AK74Fire" } 
SWEP.ShootSoundSilenced       	= { "Stalker2.AK74FireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.IntArMedium" }  
SWEP.DistantShootSound 			= { "Stalker2.ExtArBClose" }  
SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.TailArSilenced" }  
SWEP.DistantShootSoundSilenced  = { "Stalker2.TailArSilenced" } 

SWEP.DryFireSound 				= { "Stalker2.Dry" }  
SWEP.TriggerDownSound 			= { "Stalker2.ARTrigger" }  
SWEP.TriggerUpSound 			= { "Stalker2.ARTrigger" }  

SWEP.EnterSightsSound 			= { "Stalker2.5K.AimIn" }  
SWEP.ExitSightsSound 			= { "Stalker2.5K.AimOut" }  
SWEP.MalfunctionSound 			= { "Stalker2.Jam" }  

SWEP.FiremodeSound 				= { "Stalker2.ARChangelevel" }  

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000000000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_ak74_handguard_blank"] = { Bodygroups = { {9, 1} } },
	["stalker2_ak74_stock_blank"] = { Bodygroups = { {10, 1} } },
	["stalker2_ak74_mag1_big"] = { Bodygroups = { {12, 1} } },
	["stalker2_ak74_mag2_big"] = { Bodygroups = { {13, 1} } },
	["stalker2_ak74_mag1_blank"] = { Bodygroups = { {12, 2} } },
	["stalker2_ak74_mag2_blank"] = { Bodygroups = { {13, 2} } },
	["stalker2_ak74_rail"] = { Bodygroups = { {15, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(24, 0, 2),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "jnt_offset",
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(13, -0, 1.2),
        Ang = Angle(-180, 180, 0),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "jnt_offset",
		Pos = Vector(16.5, -0.21, 3.03),
        Ang = Angle(-0, 0, 90),
		Scale = 0.8,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_ak74_rail"},
		CorrectiveAng = Angle(-0.47, 0.26, 0),
		Pos = Vector(3.8, -0, 3.75),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_magazine1",
        Category = "stalker2_ak74_mag",
		Pos = Vector(0, -0, 0),
    },
	-- {
        -- PrintName = "Stock",
		-- Bone = "jnt_offset",
		-- InstalledElements = {"stalker2_ak74_stock_blank"},
        -- Category = {"cod2019_tube", "csgo_tube"},
		-- Pos = Vector(-1.2, -0, 1.5),
    -- },
	{
        PrintName = "Ammo",
        Bone = "jnt_bullet",
        Category = "go_ammo",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "jnt_offset",
        Pos = Vector(-0.75, -1, 1.48),
		Ang = Angle(-0, 0, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(7.8, -0.7, 1.8),
		Ang = Angle(0, 0, -0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/ar_ak74/s_ar_ak74_1.mdl",
        Category = "stickers",
		Icon_Offset = Vector(-0, 999.0, 0.0),
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_ak74/s_ar_ak74_2.mdl",
        Category = "stickers",
		Icon_Offset = Vector(-0, 999.0, 0.0),
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/ar_ak74/s_ar_ak74_3.mdl",
        Category = "stickers",
		Icon_Offset = Vector(-0, 999.0, 0.0),
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/stalker2/ar_ak74/s_ar_ak74_4.mdl",
        Category = "stickers",
		Icon_Offset = Vector(-0, 999.0, 0.0),
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.InstantSightIdle = false

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
    ------------------------------------------------ Sights
	["enter_sights"] = {
        Source = {"idle_to_ads"},
    },
	["idle_sights"] = {
        Source = {"idle_ads"},
    },
	["exit_sights"] = {
        Source = {"ads_to_idle"},
		MinProgress = 0.55,
        FireASAP = true,
    },
	--------------------------------------------------- Firemode
	["firemode_1"] = {
        Source = {"auto_to_semi"},
    },
	["firemode_1_sights"] = {
        Source = {"auto_to_semi_ads"},
    },
	["firemode_2"] = {
        Source = {"semi_to_auto"},
    },
	["firemode_2_sights"] = {
        Source = {"auto_to_semi_ads"},
    },
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
    ["fire"] = {
        Source = {"fire"},
    },
	["fire_empty"] = {
        Source = {"fire"},
    },
	["fire_sights"] = {
        Source = {"fire_ads"},
    },
	["dryfire"] = {
        Source = {"dryfire"},
        FireASAP = true,
    },
	["dryfire_sights"] = {
        Source = {"dryfire_ads"},
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
    ["draw"] = {
        Source = {"draw"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 5 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		Time = 0.75,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
   ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.7,
		MagSwapTime = 1.1,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleWeak", t = 2 / 30},
		    {s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 36 / 30},
			{s = "Stalker2.ArRattleWeak", t = 48 / 30},
			{s = "Stalker2.AK74MagIn", t = 58 / 30},
			-- {s = "Stalker2.AK74MagTap", t = 75 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.78,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.75,
		MagSwapTime = 1.1,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleWeak", t = 2 / 30},
			{s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 36 / 30},
			{s = "Stalker2.ArRattleWeak", t = 48 / 30},
			{s = "Stalker2.AK74MagIn", t = 58 / 30},
			{s = "Stalker2.AK74SlideIn", t = 84 / 30},
			{s = "Stalker2.AK74SlideOut", t = 95 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.82,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.65,
		MagSwapTime = 1.1,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 38 / 30},
			{s = "Stalker2.AK74MagTap", t = 61 / 30},
			{s = "Stalker2.AK74MagIn", t = 65 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.78,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.75,
		MagSwapTime = 1.1,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 38 / 30},
			{s = "Stalker2.AK74MagTap", t = 61 / 30},
			{s = "Stalker2.AK74MagIn", t = 65 / 30},
			{s = "Stalker2.AK74SlideIn", t = 96 / 30},
			{s = "Stalker2.AK74SlideOut", t = 108 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.15,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.82,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ArRattleMedium", t = 5 / 30},
			{s = "Stalker2.ArRattleWeak", t = 35 / 30},
			{s = "Stalker2.AK74SlideJamIn", t = 64 / 30},
			{s = "Stalker2.AK74SlideJamIn", t = 80 / 30},
			{s = "Stalker2.AK74SlideJamIn", t = 97 / 30},
			{s = "Stalker2.AK74SlideIn", t = 99 / 30},
			{s = "Stalker2.AK74Break", t = 103 / 30},
			{s = "Stalker2.AK74SlideOut", t = 115 / 30},
			{s = "Stalker2.ArRattleWeak", t = 135 / 30},
        },
    },
	--------------------------------------------------- Movement
	["jump_in"] = {
        Source = {"jump_start"},
		MinProgress = 0.1,
        FireASAP = true,
    },
	["jump_loop"] = {
        Source = {"jump_loop"},
		MinProgress = 0.01,
        FireASAP = true,
    },
	["jump_end"] = {
        Source = {"jump_end"},
		MinProgress = 0.5,
        FireASAP = true,
    },
	["enter_sprint"] = {
        Source = {"walk_start"},
		Time = 1,
    },
	["idle_sprint"] = {
        Source = {"sprint_idle"},
    },
	["exit_sprint"] = {
        Source = {"walk_end"},
		Time = 2,
    },
	["idle_walk"] = {
        Source = {"walk_fwd"},
		InstantIdle = true,
    },
}

-- include("weapons/weapon_template_stalker2_ar/shared.lua")