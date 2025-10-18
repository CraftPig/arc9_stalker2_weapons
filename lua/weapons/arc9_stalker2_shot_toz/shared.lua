AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_toz")

SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "TOZ-34"
SWEP.TrueName = "TOZ-34"

SWEP.Slot = 3

SWEP.Class = "Over/Under Shotgun"
SWEP.Trivia = {
    Caliber = "12/32 Gauge",
	Origin = "Soviet Union",
	Year = "1964",
	Weight = "3.3kg",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The TOZ-34 is a double-barreled over and under shotgun produced by the Tula Arms Plant (or Tulsky Oruzheiny Zavod) in Russia.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/shot_toz/v_shot_toz.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4, 4, -6), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-0, 6, -15), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 = 25 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3
SWEP.DamageRand 		 = 0.1

SWEP.RangeMin 			 = 7 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 8
SWEP.CurvedDamageScaling = true

SWEP.Num 				 = 6
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 8 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 1

SWEP.PhysBulletMuzzleVelocity 	= 410 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 120
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 2250
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 42 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "buckshot" 

SWEP.ChamberSize 	= 0 
SWEP.ClipSize 		= 2
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilUp 								= 10
SWEP.RecoilSide 							= 0

SWEP.RecoilRandomUp 						= 0.5
SWEP.RecoilRandomSide 						= 5

SWEP.RecoilAutoControl 						= 5
SWEP.RecoilAutoControlMultShooting       	= 0.5

SWEP.RecoilDissipationRate 					= 10 
SWEP.RecoilResetTime 						= 0.2
SWEP.RecoilFullResetTime 					= 0.5

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 				= 0.0568 / 1.25

SWEP.SpreadAddRecoil 		= 0.0 -- Applied per unit of recoil.

SWEP.SpreadAddSights 		= -0.015
SWEP.SpreadAddMove 			= 0.01
SWEP.SpreadAddMidAir 		= 0.02
-- SWEP.SpreadAddHipFire 	= 0.01
SWEP.SpreadAddCrouch 		= 0

-- Weapon Misc ---------------------------------------------------------------------------------------------
SWEP.ShotgunReload 				= false
SWEP.BarrelLength 				= 44 

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 60

SWEP.IronSights = {
    Pos = Vector(-3.15, -4, 2),
    Ang = Angle(-1.8, -1.0, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 0, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(-0.4, -1, 0.7) 
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
SWEP.SprintPos = Vector(1, -2, 0.35) 
SWEP.SprintAng = Angle(35, 0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, -20, 0)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(18, 44, 7)
SWEP.CustomizeRotateAnchor = Vector(18, -3, -4)

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
SWEP.NoShellEject 				= true
SWEP.NoShellEjectManualAction 	= true -- Don't eject shell while cycling
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_12gauge.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_shotgun" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.TOZFire" } 
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
	["stalker2_toz_barrel_short"] = { Bodygroups = { {1, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Barrel",
        Category = "stalker2_toz_barrel",
        Bone = "jnt_barrel",
        Pos = Vector(15, 0, 1.3),
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
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_toz/s_shot_toz_2.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "jnt_offset",
        Pos = Vector(4, -0.95, 1.5),
		Ang = Angle(-0, 0, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
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

SWEP.Animations = {
    ["idle"] = {
        Source = {"basepose"},
    },
    ------------------------------------------------ Sights
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"fire"},
    },
	["fire_sights"] = {
        Source = {"fire"},
    },
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
	["dryfire"] = {
        Source = {"walk_end"},
		MinProgress = 0.033,
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
    ["draw"] = {
        Source = {"draw"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.SgRattleStrong", t = 5 / 30},
			{s = "Stalker2.SgRattleStrong", t = 32 / 30},
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
        MinProgress = 0.5,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.TOZSlideBack", t = 7 / 30},
			{s = "Stalker2.TOZClick", t = 8 / 30},
			{s = "Stalker2.TOZMagOut1", t = 8 / 30},
			{s = "Stalker2.TOZMagIn1", t = 37 / 30},
			{s = "Stalker2.TOZSlideForward", t = 60 / 30},
			{s = "Stalker2.TOZClick", t = 62 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.5,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.TOZSlideBack", t = 6 / 30},
			{s = "Stalker2.TOZClick", t = 8 / 30},
			{s = "Stalker2.TOZMagOut1", t = 8 / 30},
			{s = "Stalker2.TOZMagIn1", t = 38 / 30},
			{s = "Stalker2.TOZMagIn2", t = 39 / 30},
			{s = "Stalker2.TOZSlideForward", t = 60 / 30},
			{s = "Stalker2.TOZClick", t = 62 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.TOZSlideBack", t = 5 / 30},
			{s = "Stalker2.TOZMagOut2", t = 22 / 30},
			{s = "Stalker2.TOZMagIn1", t = 57 / 30},
			{s = "Stalker2.TOZMagIn2", t = 57 / 30},
			{s = "Stalker2.TOZSlideForward", t = 80 / 30},
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
        Source = {"walk"},
		InstantIdle = true,
    },
}
include("weapon_template_stalker2_shotgun.lua")