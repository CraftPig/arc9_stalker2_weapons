AddCSLuaFile()
SWEP.Base = "weapon_template_stalker2_shot"

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_spsa")

SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "SPSA-14"
SWEP.TrueName = "SPAS-12"

SWEP.Slot = 3
SWEP.Spawnable = true

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    Caliber = "12/32 Gauge",
	Origin = "Italy",
	Year = "1979",
	Weight = "4.4kg (9.7lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The SPAS-12 is a combat shotgun manufactured by Italian firearms company Franchi from 1979 to 2000. It is a dual-mode shotgun, adjustable for semi-automatic or pump-action operation at the push of a button.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/shot_spas/v_shot_spas.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4, 4, -6.5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(1, 6, -15), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 = 11.7 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3
SWEP.DamageRand 		 = 0.1

SWEP.RangeMin 			 = 5 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 8
SWEP.CurvedDamageScaling = true

SWEP.Num 				 = 12
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 8 
SWEP.ArmorPiercing		 = 0.48
SWEP.Penetration		 = 1

SWEP.PhysBulletMuzzleVelocity 	= 450 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 600
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 2250
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 9 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "buckshot" 

SWEP.ChamberSize 	= 0 
SWEP.ClipSize 		= 8
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilUp 								= 5
SWEP.RecoilSide 							= 0

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
SWEP.Spread 				= 0.0668 / 1.25

SWEP.SpreadAddRecoil 		= 0.0 -- Applied per unit of recoil.

SWEP.SpreadAddSights 		= -0.015
SWEP.SpreadAddMove 			= 0.01
SWEP.SpreadAddMidAir 		= 0.02
-- SWEP.SpreadAddHipFire 	= 0.01
SWEP.SpreadAddCrouch 		= 0

-- Weapon Misc ---------------------------------------------------------------------------------------------
SWEP.ShotgunReload 				= true
SWEP.BarrelLength 				= 42 

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 65

SWEP.IronSights = {
    Pos = Vector(-0, -1, 0.8),
    Ang = Angle(-0, 0.26, 0),
    Magnification = 1.17,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(-0.0, -0, 0.7) 
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
SWEP.CustomizePos = Vector(15, 35, 7)
SWEP.CustomizeRotateAnchor = Vector(15, -3, -4)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= false

-- SWEP.DropMagazineQCA 			= 4
-- SWEP.DropMagazineAmount 		= 1 
-- SWEP.DropMagazineTime 			= 0.7

-- SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
-- SWEP.DropMagazineAng 			= Angle(0, 0, 0)
-- SWEP.DropMagazineVelocity 		= Vector(80, -60, 0) -- Put something here if your anim throws the mag with force

-- SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_ak74/w_ar_ak74_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								-- "physics/metal/weapon_impact_soft2.wav",
								-- "physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

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
SWEP.ShootSound               	= { "Stalker2.SPSAFire" } 
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

SWEP.DefaultBodygroups = "000"

SWEP.AttachmentElements = {
	["stalker2_spsa_rail"] = { Bodygroups = { {2, 1} } },
}


SWEP.Attachments = {
	{
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_spsa_rail"},
		CorrectiveAng = Angle(-0.0, 0.0, 0),
		Pos = Vector(6.2, -0, 2.9),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Ammo",
        Bone = "jnt_bullet1",
        Category = "go_ammo_sg",
        Pos = Vector(0, -0, -0),
    },
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_toz/s_shot_toz_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_toz/s_shot_toz_2.mdl",
        Category = "stickers",
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(6.7, -0.95, 1.1),
		Ang = Angle(0, 0, -0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.InstantSightIdle = false

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
	["holster"] = {
        Source = {"holster"},
		Time = 0.5,
		EventTable = {
			{s = "Stalker2.SgRattleStrong", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload_start"] = {
        Source = {"reload_in"},
		Time = 0.5,
        MinProgress = 0.4,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.SgRattleMedium", t = 0 / 30},
        },
    },
	["reload_insert"] = {
        Source = {"reload"},
		Time = 0.7,
        MinProgress = 0.5,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.SPSAMagInTac", t = 3 / 30},
			{s = "Stalker2.SgRattleWeak", t = 8 / 30},
        },
    },
	["reload_finish"] = {
        Source = {"reload_out"},
		Time = 0.4,
        MinProgress = 0.75,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
        },
    },
	["reload_start_empty"] = {
        Source = {"reload_empty"},
		Time = 2.8,
        MinProgress = 0.65,
        FireASAP = false,
		RestoreAmmo = 1,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SPSASlideHit", t = 8 / 30},
			{s = "Stalker2.SPSASlideBack", t = 13 / 30},
			{s = "Stalker2.SPSAMagIn", t = 30 / 30},
			{s = "Stalker2.SPSAMagInTac", t = 42 / 30},
			{s = "Stalker2.SPSASlideForward", t = 62 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.SgRattleMedium", t = 2 / 30},
			{s = "Stalker2.SPSASlideHit", t = 40 / 30},
			{s = "Stalker2.SPSASlideEffort", t = 45 / 30},
			{s = "Stalker2.SPSASlideEffort", t = 58 / 30},
			{s = "Stalker2.SgRattleMedium", t = 62 / 30},
			{s = "Stalker2.SPSASlideJamBack", t = 95 / 30},
			{s = "Stalker2.SPSABreakBullet", t = 103 / 30},
			{s = "Stalker2.SPSASlideForward", t = 100 / 30},
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

-- include("weapons/arc9_stalker2_template/weapon_template_stalker2_shotgun.lua")