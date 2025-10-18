AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_rhino")

SWEP.SubCategory = "Sidearms"

SWEP.PrintName = "Rhino"
SWEP.TrueName = "Colt Python"

SWEP.Slot = 1

SWEP.Class = "Revolver"
SWEP.Trivia = {
    Caliber = ".357 Magnum",
	Origin = "US",
	Year = "1955",
	Weight = "1.7kg (1.08lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[With its high caliber, this revolver is often marketed as a hunting weapon, proving equally effective against African buffalo and Zone chimeras.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/pt_rhino/v_pt_rhino.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_deagle.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-16, 5.5, -8), -- non tpik (while on ground, on npc etc)
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
SWEP.DamageMax			 = 100 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 8 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.6
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 300 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 70
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 3000
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 7 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "357" 

SWEP.ChamberSize 	= 0 
SWEP.ClipSize 		= 6
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 								= (5) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilRandomUp 						= 0.5
SWEP.RecoilRandomSide 						= 1

SWEP.RecoilAutoControl 						= 6
SWEP.RecoilAutoControlMultShooting       	= 0.25

SWEP.RecoilDissipationRate 					= 35 
SWEP.RecoilResetTime 						= 0.033
SWEP.RecoilFullResetTime 					= 0.35

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.0227 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.001 -- Applied per unit of recoil.
SWEP.SpreadMultSights			= -SWEP.Spread
SWEP.SpreadMultCrouch 			= 0.85
SWEP.SpreadMultMove 			= 1.5
SWEP.SpreadMultMidAir 			= 2.5

SWEP.RecoilModifierCap 			= SWEP.RecoilMax
SWEP.RecoilModifierCapSights 	= 0

SWEP.BarrelLength 				= 25 

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 65

SWEP.IronSights = {
    Pos = Vector(-4.0, -3, 4.8),
    Ang = Angle(-0.8, -1.8, 9),
    Magnification = 1.17,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 0, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(-0.0, -0, 1.0) 
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
SWEP.CustomizePos = Vector(22, 30, 7.25)
SWEP.CustomizeRotateAnchor = Vector(22, -4, -6)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= false

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.2

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(50, -110, 0) -- Put something here if your anim throws the mag with force

-- SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/pt_pm/w_pt_pm_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
-- SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								-- "physics/metal/weapon_impact_soft2.wav",
								-- "physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.SWEP.ShouldDropMag 				= true

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
SWEP.NoShellEject 				= true
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
	[1] = "jnt_bullet_1",
	[2] = "jnt_bullet_2",
	[3] = "jnt_bullet_3",
	[4] = "jnt_bullet_4",
	[5] = "jnt_bullet_5",
	[6] = "jnt_bullet_6",
}
SWEP.HideBones = {
 "jnt_loader",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.rhinoFire" } 
-- SWEP.ShootSoundSilenced       	= { "Stalker2.AK74FireSil" } 

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

-- SWEP.AttachmentElements = {
	-- ["stalker2_pm_mag_ext"] = { Bodygroups = { {1, 1} } },
-- }

SWEP.Attachments = {
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
        Pos = Vector(2.5, -0.5, 4.3),
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
	-- ["enter_sights"] = {
        -- Source = {"idle_to_aim"},
    -- },
	["idle_sights"] = {
        Source = {"basepose"},
    },
	-- ["exit_sights"] = {
        -- Source = {"ads_to_aim"},
		-- MinProgress = 0.55,
        -- FireASAP = true,
    -- },
	--------------------------------------------------- Firemode
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
    ["fire"] = {
        Source = {"fire"},
		EventTable = {
			{s = "Stalker2.RhinoCylinderRoll", t = 16 / 30},
        },
    },
	-- ["fire_sights"] = {
        -- Source = {"fire_aim"},
    -- },
	["dryfire"] = {
        Source = {"dryfire"},
        FireASAP = true,
    },
	-- ["dryfire_sights"] = {
        -- Source = {"dryfire_aim"},
        -- FireASAP = true,
    -- },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 8 / 30},
			{s = "Stalker2.ArRattleMedium", t = 48 / 30},
			{s = "Stalker2.RhinoCylinderOut", t = 75 / 30},
			{s = "Stalker2.RhinoCylinderRoll", t = 84 / 30},
			{s = "Stalker2.RhinoCylinderIn", t = 132 / 30},
			{s = "Stalker2.RhinoCylinderRollLong", t = 158 / 30},
			{s = "Stalker2.RhinoCylinderRoll", t = 191 / 30},
			{s = "Stalker2.RhinoTriggerOut", t = 221 / 30},
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
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.65,
		MagSwapTime = 1.9,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 1 / 30},
			{s = "Stalker2.RhinoMagTap", t = 7 / 30},
		    {s = "Stalker2.RhinoCylinderOut", t = 13 / 30},
			{s = "Stalker2.RhinoBulletOut", t = 30 / 30},
			{s = "Stalker2.ArRattleMedium", t = 51 / 30},
			{s = "Stalker2.RhinoMagTap", t = 72 / 30},
			{s = "Stalker2.RhinoBulletInCalm", t = 73 / 30},
			{s = "Stalker2.RhinoBulletInColision", t = 77 / 30},
			{s = "Stalker2.RhinoBulletIn", t = 82 / 30},
			{s = "Stalker2.RhinoCylinderIn", t = 103 / 30},
			{s = "Stalker2.ArRattleStrong", t = 105 / 30},
			{s = "Stalker2.ArRattleMedium", t = 122 / 30},
			
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ArRattleMedium", t = 5 / 30},
			{s = "Stalker2.RhinoTriggerJam", t = 38 / 30},
			{s = "Stalker2.RhinoTriggerJam", t = 44 / 30},
			{s = "Stalker2.RhinoTriggerOut", t = 44 / 30},
			{s = "Stalker2.RhinoCylinderRoll", t = 57 / 30},
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


include("weapon_template_stalker2_pt.lua")