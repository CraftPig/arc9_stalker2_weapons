AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_pm")

SWEP.SubCategory = "Sidearms"

SWEP.PrintName = "PTM"
SWEP.TrueName = "Makarov PM"

SWEP.Slot = 1

SWEP.Class = "Pistol"
SWEP.Trivia = {
    Caliber = "9x18mm",
	Origin = "Soviet Union",
	Year = "1951",
	Weight = "0.7kg (1.6lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The PM (Pistolet Makarova - Makarov's Pistol) is a Soviet designed small-calibre handgun adopted by the Soviet military in 1951.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/pt_pm/v_pt_pm.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_p228.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-14, 5.5, -5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-17, 8, -6), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "revolver"
SWEP.HoldTypeSprint          = "revolver"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "revolver"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "revolver"
SWEP.HoldTypeNPC 			 = "revolver"

SWEP.AnimShoot 				 = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload 			 = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload		 = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw 				 = false
SWEP.AnimMelee 				 = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee		 = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax			 = 30 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 7 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 330 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 667
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 1500
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 3.3 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "pistol" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 8
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 63263758
SWEP.RecoilPatternDrift = 10 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
    -21,
	-18,
	-15,
	-12,
	-10,
	-6,
	-3,
	-0.3,
	3,
	6,
	9,
	12,
	15,
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
SWEP.Spread 					= 0.0189 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

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
    Pos = Vector(-0, -2, 0.8),
    Ang = Angle(-0, 0.26, 0),
    Magnification = 1.17,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 0, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(-0.0, -1, 1.0) 
SWEP.ActiveAng = Angle(0, 1, 0)

SWEP.MovingPos =  Vector(-0, -0, -0)
SWEP.MovingAng =  Angle(0, -2, -6)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -0, -1),
    Ang = Angle(0, 10, 0)
}

SWEP.CrouchPos = Vector(-0.8, -0, -0.75)
SWEP.CrouchAng = Angle(-0, -0, -8)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = false -- No sprintpos during reloads
SWEP.SprintPos = Vector(-2, -0, 1) 
SWEP.SprintAng = Angle(15, -10, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, 5, -30)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(18.5, 22, 5.5)
SWEP.CustomizeRotateAnchor = Vector(18, -4, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.2

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(50, -110, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/pt_pm/w_pt_pm_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.2

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(50, -110, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/pt_pm/w_pt_pm_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false -- Don't eject shell while cycling
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)		 
SWEP.ShellModel 				= "models/shells/shell_9mm.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_pistol" } -- m79_smoke_c m79_shockwave
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
SWEP.ShootSound               	= { "Stalker2.PmFire" } 
SWEP.ShootSoundSilenced       	= { "Stalker2.AK74FireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.IntHGMedium" }  
SWEP.DistantShootSound 			= { "Stalker2.ExtHGAClose" }  
SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.TailHGSilenced" }  
SWEP.DistantShootSoundSilenced  = { "Stalker2.TailHGSilenced" }  

SWEP.DryFireSound 				= { "Stalker2.Dry" }  
-- SWEP.TriggerDownSound 			= { "Stalker2.ARTrigger" }  
-- SWEP.TriggerUpSound 			= { "Stalker2.ARTrigger" }  

SWEP.EnterSightsSound 			= { "Stalker2.5K.AimIn" }  
SWEP.ExitSightsSound 			= { "Stalker2.5K.AimOut" }  
SWEP.MalfunctionSound 			= { "Stalker2.Jam" }  

SWEP.FiremodeSound 				= { "Stalker2.ARChangelevel" }  

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000"

SWEP.AttachmentElements = {
	["stalker2_pm_mag_ext"] = { Bodygroups = { {1, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle_pistol", "muzzle_pistols", "cod2019_muzzle" },
		Pos = Vector(4.87, 0, 1.55),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "stalker2_pm_mag",
		Pos = Vector(0, -0, 0),
    },
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
        Bone = "jnt_slide",
        Pos = Vector(0.9, -0.55, -0.2),
		Ang = Angle(-0, 0, -0),
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.InstantSightIdle = false
SWEP.NoInspect = true

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
	["idle_empty"] = {
        Source = {"idle_empty"},
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
	["enter_sights_empty"] = {
        Source = {"idle_to_ads_empty"},
    },
	["idle_sights_empty"] = {
        Source = {"idle_ads_empty"},
    },
	["exit_sights_empty"] = {
        Source = {"ads_to_idle_empty"},
		MinProgress = 0.55,
        FireASAP = true,
    },
	--------------------------------------------------- Firemode
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
	["bash_empty"] = {
        Source = {"melee_1_empty", "melee_2_empty", "melee_3_empty"},
    },
    ["fire"] = {
        Source = {"fire"},
    },
	["fire_sights"] = {
        Source = {"fire_ads"},
    },
	["fire_empty"] = {
        Source = {"fire_empty"},
    },
	["fire_sights_empty"] = {
        Source = {"fire_ads_empty"},
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
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 15 / 30},
			{s = "Stalker2.PmMagIn", t = 41 / 30},
			{s = "Stalker2.PmSlideJamBack", t = 74 / 30},
			{s = "Stalker2.PmSlideForward", t = 78 / 30},
			
        },
    },
    ["draw"] = {
        Source = {"draw"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		Time = 0.5,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
	["draw_empty"] = {
        Source = {"draw_empty"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
	["holster_empty"] = {
        Source = {"holster_empty"},
		Time = 0.5,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.8,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.PmMagOutIntro", t = 10 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 18 / 30},
			{s = "Stalker2.PmMagIn", t = 45 / 30},
			{s = "Stalker2.ArRattleMedium", t = 57 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.85,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.PmMagOutIntro", t = 10 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 18 / 30},
			{s = "Stalker2.PmMagIn", t = 45 / 30},
			{s = "Stalker2.PmSlideForward", t = 65 / 30},
			{s = "Stalker2.ArRattleMedium", t = 65 / 30},
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.74,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.PmMagPullIncreased", t = 4 / 30},
		    {s = "Stalker2.PmMagOutIntro", t = 12 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 20 / 30},
			{s = "Stalker2.PmMagIn", t = 47 / 30},
			{s = "Stalker2.ArRattleMedium", t = 57 / 30},
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.77,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.PmMagPullIncreased", t = 4 / 30},
		    {s = "Stalker2.PmMagOutIntro", t = 12 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 20 / 30},
			{s = "Stalker2.PmMagIn", t = 47 / 30},
			{s = "Stalker2.PmSlideForward", t = 65 / 30},
			{s = "Stalker2.ArRattleMedium", t = 75 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ArRattleMedium", t = 5 / 30},
			{s = "Stalker2.ArRattleMedium", t = 35 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 40 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 53 / 30},
			{s = "Stalker2.PmSlideJamBack", t = 65 / 30},
			{s = "Stalker2.PmBreakBullet", t = 70 / 30},
			{s = "Stalker2.PmSlideForward", t = 76 / 30},
			{s = "Stalker2.ArRattleMedium", t = 95 / 30},
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
	["jump_end_empty"] = {
        Source = {"jump_end_empty"},
		MinProgress = 0.5,
        FireASAP = true,
    },
	["jump_in_empty"] = {
        Source = {"jump_start_empty"},
		MinProgress = 0.1,
        FireASAP = true,
    },
	["jump_loop_empty"] = {
        Source = {"jump_loop_empty"},
		MinProgress = 0.01,
        FireASAP = true,
    },
	["jump_end_empty"] = {
        Source = {"jump_end_empty"},
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
	["enter_sprint_empty"] = {
        Source = {"walk_start_empty"},
		Time = 1,
    },
	["idle_sprint_empty"] = {
        Source = {"sprint_idle_empty"},
    },
	["exit_sprint_empty"] = {
        Source = {"walk_end_empty"},
		Time = 2,
    },
	
	["idle_walk"] = {
        Source = {"walk_fwd"},
		InstantIdle = true,
    },
	["idle_walk_empty"] = {
        Source = {"walk_fwd_empty"},
		InstantIdle = true,
    },
}


include("weapon_template_stalker2_pt.lua")