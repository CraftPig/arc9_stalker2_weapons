AddCSLuaFile()
SWEP.Base = "weapon_template_stalker2_ar"

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_fora")

SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "Fora-221"
SWEP.TrueName = "IWI Tavor SAR TSB16"

SWEP.Slot = 2
SWEP.Spawnable = true

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "5.56x45 NATO",
	Origin = "Soviet Union",
	Year = "1997",
	Weight = "3.2kg (7bs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[IMI Compact Tavor CTAR-21 is a Carbine version of the Tavor TAR-21 with a shorter barrel.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/ar_tar21/v_ar_tar21.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_famas.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-11, 4, -8), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-20, 0, -1), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 = 17 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 22 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.4
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 711 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 800
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = -1,
    },
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 2250
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 1.39 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 30
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 421
SWEP.RecoilPatternDrift = 1 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
	0,
	30,
	28,
	20,
	9,
	2,
	-3.5,
	-11,
	-15,
	-10,
	-15,
	-13,
	-18,
	-15,
	-20,
	-21,
	-16,
	-18,
	-22,
	-20,
	-23,
	-20,
	-22,
	-20,
	-23,
	-20,
	-22,
	-25,
	-22,
	-23,
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
SWEP.Spread 					= 0.0108 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

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
    Pos = Vector(-0.0, -0.5, 2.12),
    Ang = Angle(-0.0, 0.0, 0),
    Magnification = 1.15,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(-0.5, -0.0, 2.0) 
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
SWEP.SprintPos = Vector(0, -0, 1) 
SWEP.SprintAng = Angle(15, -10, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, 5, -30)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 


SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(12, 32, 8)
SWEP.CustomizeRotateAnchor = Vector(12, -3, -7)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(-20, -0, 0) -- Put something here if your anim throws the mag with force

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

SWEP.MuzzleParticle 			= { "muzzleflash_FAMAS" } -- m79_smoke_c m79_shockwave
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
SWEP.ShootSound               	= { "Stalker2.ForaFire" } 
SWEP.ShootSoundSilenced       	= { "Stalker2.ForaFireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.IntArMedium" }  
SWEP.DistantShootSound 			= { "Stalker2.ExtArAClose" }  
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

SWEP.DefaultBodygroups = "00000000000000"

SWEP.AttachmentElements = {
	["stalker2_tar21_mag_big"] = { Bodygroups = { {5, 1} } },
	["stalker2_tar21_front"] = { Bodygroups = { {6, 1} } },
	["stalker2_tar21_rear"] = { Bodygroups = { {7, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(12, 0, 2.1),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
		Scale = 0.8,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "jnt_offset",
		Pos = Vector(7, 1.2, 3.05),
        Ang = Angle(-0, 0, -90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_tar21_front", "stalker2_tar21_rear"},
		CorrectiveAng = Angle(-0.22, -0.29, 0),
		Pos = Vector(2.5, -0, 4.55),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "stalker2_tar21_mag",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Ammo",
        Bone = "bullets",
        Category = "go_ammo",
		Pos = Vector(0, -0, 3),
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
        Pos = Vector(2.35, -0.72, 1.1),
		Ang = Angle(-0, 0, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(0.0, -0.95, 2.7),
		Ang = Angle(0, 0, 0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/ar_tar21/s_ar_tar21_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_tar21/s_ar_tar21_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/ar_tar21/s_ar_tar21_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/stalker2/ar_tar21/s_ar_tar21_4.mdl",
        Category = "stickers",
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
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.9,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ARC9Cloth2", t = 3 / 30},
			{s = "Stalker2.ForaMagInIntroLow", t = 10 / 30},
			{s = "Stalker2.ForaMagInIntro", t = 25 / 30},
			{s = "Stalker2.ForaMagInOutro", t = 30 / 30},
			{s = "Stalker2.GrozaSlideHit", t = 38 / 30},
			{s = "Stalker2.ForaSlideBack", t = 55 / 30},
			{s = "Stalker2.ForaSlideForward", t = 68 / 30},
        },
		IKTimeLine = {
            {
                t = 0.84,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
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
		MagSwapTime = 1,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 1 / 30},
		    {s = "Stalker2.ForaMagInOut", t = 8 / 30},
			{s = "Stalker2.ArRattleWeak", t = 12 / 30},
			{s = "Stalker2.ArRattleMedium", t = 27 / 30},
			{s = "Stalker2.ForaMagInIntro", t = 35 / 30},
			{s = "Stalker2.ForaMagInOutro", t = 49 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.75,
		MagSwapTime = 1,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 1 / 30},
			{s = "Stalker2.ForaMagInOut", t = 8 / 30},
			{s = "Stalker2.ArRattleWeak", t = 12 / 30},
			{s = "Stalker2.ArRattleMedium", t = 27 / 30},
			{s = "Stalker2.ForaMagInIntro", t = 35 / 30},
			{s = "Stalker2.ForaMagInOutro", t = 49 / 30},
			{s = "Stalker2.ArRattleMedium", t = 58 / 30},
			{s = "Stalker2.ForaSlideBack", t = 64 / 30},
			{s = "Stalker2.ForaSlideForward", t = 75 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.9,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 5 / 30},
			{s = "Stalker2.ArRattleWeak", t = 35 / 30},
			{s = "Stalker2.ForaSlideJamBack", t = 57 / 30},
			{s = "Stalker2.ForaSlideJamEffort", t = 60 / 30},
			{s = "Stalker2.ForaSlideJamForward", t = 73 / 30},
			{s = "Stalker2.AK74Break", t = 76 / 30},
			{s = "Stalker2.ForaSlideJamBack", t = 87 / 30},
			{s = "Stalker2.ForaSlideJamEffort", t = 92 / 30},
			{s = "Stalker2.ForaSlideJamForward", t = 96 / 30},
			{s = "Stalker2.ArRattleMedium", t = 107 / 30},
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


-- include("weapons/arc9_stalker2_template/weapon_template_stalker2_ar.lua")