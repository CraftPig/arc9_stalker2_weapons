AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_saiga")

SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "Saiga D-12"
SWEP.TrueName = "Saiga-12K"

SWEP.Slot = 3

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    Caliber = "12/32 Gauge", 
	Origin = "Russia",
	Year = "1994",
	Weight = "3.6kg (7.9lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[Based on the AKM-74, this shotgun is favored among stalkers and professional military alike for its prowess as a powerful assault weapon.]]
-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/shot_saiga/v_shot_saiga.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4, 4, -6.5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-1, 5, -15), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "shotgun"
SWEP.HoldTypeSprint          = "shotgun"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "shotgun"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "shotgun"
SWEP.HoldTypeNPC 			 = "shotgun"

SWEP.AnimShoot 				 = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload 			 = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload		 = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw 				 = false
SWEP.AnimMelee 				 = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee		 = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax			 = 23.33 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3
SWEP.DamageRand 		 = 0.1

SWEP.RangeMin 			 = 4.5 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 8
SWEP.CurvedDamageScaling = true

SWEP.Num 				 = 6
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 8 
SWEP.ArmorPiercing		 = 0.6
SWEP.Penetration		 = 1

SWEP.PhysBulletMuzzleVelocity 	= 430 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 600
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 2700
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 7 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "buckshot" 

SWEP.ChamberSize 	= 0 
SWEP.ClipSize 		= 8
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilUp 								= 5
SWEP.RecoilSide 							= 1

SWEP.RecoilRandomUp 						= 0.5
SWEP.RecoilRandomSide 						= 2.5

SWEP.RecoilAutoControl 						= 3
SWEP.RecoilAutoControlMultShooting       	= 0.1

SWEP.RecoilDissipationRate 					= 10 
SWEP.RecoilResetTime 						= 0.2
SWEP.RecoilFullResetTime 					= 0.5

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 				= 0.0611 / 1.25

SWEP.SpreadAddRecoil 		= 0.0 -- Applied per unit of recoil.

SWEP.SpreadAddSights 		= -0.015
SWEP.SpreadAddMove 			= 0.01
SWEP.SpreadAddMidAir 		= 0.02
-- SWEP.SpreadAddHipFire 	= 0.01
SWEP.SpreadAddCrouch 		= 0

-- Weapon Misc ---------------------------------------------------------------------------------------------
SWEP.ShotgunReload 				= false
SWEP.BarrelLength 				= 35 

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 60

SWEP.IronSights = {
    Pos = Vector(-0, -0, 0.85),
    Ang = Angle(-0, 0.2, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(0.5, 1.2, 0.5) 
SWEP.ActiveAng = Angle(0, 1, 0)

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
SWEP.CustomizePos = Vector(14, 33, 7)
SWEP.CustomizeRotateAnchor = Vector(14, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.25

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/shot_saiga/w_shot_saiga_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= true -- Don't eject shell while cycling
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_12gauge.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_lmg" } -- m79_smoke_c m79_shockwave
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
SWEP.ShootSound               	= { "Stalker2.SaigaFire" } 
-- SWEP.ShootSoundSilenced       	= { "Stalker2.DniProFireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.IntArMedium" }  
SWEP.DistantShootSound 			= { "Stalker2.ExtArBClose" }  
-- SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.TailArSilenced" }  
-- SWEP.DistantShootSoundSilenced  = { "Stalker2.TailArSilenced" }  

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

SWEP.DefaultBodygroups = "0000000000000000"

SWEP.AttachmentElements = {
	["stalker2_saiga_stock_blank"] = { Bodygroups = { {2, 1} } },
	["stalker2_saiga_mag_ext"] = { Bodygroups = { {4, 1} } },
	["stalker2_saiga_railtop"] = { Bodygroups = { {5, 1} } },
	["stalker2_saiga_railside"] = { Bodygroups = { {6, 1} } },
	["stalker2_saiga_railbottom"] = { Bodygroups = { {7, 1} } },
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
		InstalledElements = {"stalker2_saiga_railbottom"},
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(12.4, -0, 0.7),
        Ang = Angle(-180, 180, 0),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"stalker2_saiga_railside"},
        Bone = "jnt_offset",
		Pos = Vector(16.25, 1.1, 2.3),
        Ang = Angle(-0, 0, -90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_saiga_railtop"},
		CorrectiveAng = Angle(-0.0, 0.0, 0),
		Pos = Vector(3.55, -0, 4),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "stalker2_saiga_mag",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Stock",
		Bone = "jnt_offset",
		InstalledElements = {"stalker2_saiga_stock_blank"},
        Category = {"cod2019_tube", "csgo_tube"},
		Pos = Vector(-1.2, -0, 1.6),
		Scale = 1,
    },
	{
        PrintName = "Ammo",
        Bone = "jnt_bullet",
        Category = "go_ammo_sg",
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
        Pos = Vector(0.5, -0.9, 1.77),
		Ang = Angle(-0, 0, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(7.8, -0.7, 1.6),
		Ang = Angle(0, 0, -0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/shot_saiga/s_shot_saiga_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/shot_saiga/s_shot_saiga_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/shot_saiga/s_shot_saiga_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/stalker2/shot_saiga/s_shot_saiga_4.mdl",
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
    --------------------------------------------------- Fire
    ["fire"] = {
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
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
    --------------------------------------------------- Draw & Holster
    ["draw"] = {
        Source = {"draw"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.SgRattleStrong", t = 5 / 30},
        },
    },
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.SgRattleStrong", t = 0 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 5 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 16 / 30},
			{s = "Stalker2.SaigaSlideBack", t = 33 / 30},
			{s = "Stalker2.SaigaSlideForward", t = 42 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.05,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.77,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.92,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["holster"] = {
        Source = {"holster"},
		Time = 0.5,
		EventTable = {
			{s = "Stalker2.SgRattleStrong", t = 5 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 7 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 47 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 60 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.78,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 7 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 47 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 60 / 30},
			{s = "Stalker2.SaigaSlideBack", t = 75 / 30},
			{s = "Stalker2.SaigaSlideForward", t = 84 / 30},
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 9 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 57 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 70 / 30},
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.78,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 9 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 57 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 70 / 30},
			{s = "Stalker2.SaigaSlideBack", t = 86 / 30},
			{s = "Stalker2.SaigaSlideForward", t = 97 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.SgRattleMedium", t = 2 / 30},
			{s = "Stalker2.SaigaSlideJamEffort", t = 32 / 30},
			{s = "Stalker2.SaigaBreakBullet", t = 64 / 30},
			{s = "Stalker2.SgRattleWeak", t = 75 / 30},
			{s = "Stalker2.SaigaSlideBack", t = 105 / 30},
			{s = "Stalker2.SaigaSlideForward", t = 116 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.05,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.83,
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
	["idle_sprint"] = {
        Source = {"sprint_idle"},
    },
	["idle_walk"] = {
        Source = {"walk_fwd"},
		InstantIdle = true,
    },
}
include("weapon_template_stalker2_shotgun.lua")