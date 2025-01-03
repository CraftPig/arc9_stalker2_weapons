AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_ak74")

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"
SWEP.SubCategory = "Pistols"

SWEP.AdminOnly = false
SWEP.PrintName = "PTM"
SWEP.TrueName = "Makarov PM"

SWEP.Slot = 1

SWEP.Class = "Assault Rifle"
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
SWEP.DamageMin 			 = SWEP.DamageMax / 1.5

SWEP.RangeMax			 = 100 / 0.0254
SWEP.RangeMin 			 = SWEP.RangeMax / 3

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 250/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 315 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 667
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 0.9,
    [HITGROUP_LEFTARM] = 0.6,
    [HITGROUP_RIGHTARM] = 0.6,
    [HITGROUP_LEFTLEG] = 0.4,
    [HITGROUP_RIGHTLEG] = 0.4,
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "pistol" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 8
SWEP.SupplyLimit    = 4

SWEP.AmmoPerShot    = 1 
SWEP.InfiniteAmmo   = false 
SWEP.BottomlessClip = false 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 421
SWEP.RecoilPatternDrift = 1 -- Higher values = more extreme recoil patterns.
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
--translate this recoil table in what degrees the bullet would go for each entry

SWEP.Recoil 								= 3.0 * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilAddSighted 						= -SWEP.Recoil / 2

SWEP.RecoilRandomUp 						= 0
SWEP.RecoilRandomSide 						= 0.1

SWEP.RecoilAutoControl 						= 2.5 -- Multiplier for automatic recoil control.

SWEP.RecoilDissipationRate 					= 15
SWEP.RecoilResetTime 						= 0.25
SWEP.RecoilFullResetTime 					= 1

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize -- MaxRadiusExtensionModifier

---- Weapon Visual Recoil
SWEP.UseVisualRecoil 						= true
SWEP.PhysicalVisualRecoil 					= false 

SWEP.VisualRecoilMultHipFire 				= 0.05
SWEP.VisualRecoilMultSights 				= 0.005
SWEP.VisualRecoilMultCrouch 				= 0.025

SWEP.VisualRecoilUp 						= 1 
SWEP.VisualRecoilUpAddSighted 				= -1
SWEP.VisualRecoilSide 						= 0.5
SWEP.VisualRecoilRoll 						= 500.0

SWEP.VisualRecoilPunch 						= 30
SWEP.VisualRecoilPunchMultSights 			= 10

SWEP.VisualRecoilDampingConst 				= 100 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude 			= 1
SWEP.VisualRecoilSpringPunchDamping 		= 4 -- ehh another val for "eft" recoil, 6 is default

SWEP.RecoilKick 							= 0.5 -- Camera recoil
SWEP.RecoilKickDamping 						= 1 -- Camera recoil damping

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 			= 0.035 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 	= 0.0189 / 10
SWEP.SpreadAddFirstShot = -SWEP.Spread

SWEP.SpreadAddMove 		= SWEP.Spread * 0.1
SWEP.SpreadAddMidAir 	= SWEP.Spread * 3
SWEP.SpreadAddCrouch 	= -SWEP.Spread * 0.25
SWEP.SpreadAddSights 	= -SWEP.Spread

SWEP.RecoilModifierCap = SWEP.RecoilMax

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway 					= 0 -- How much the gun sways
SWEP.SwayAddSighted 		= 0.0
SWEP.SwayAddMidAir 			= 1.0 

SWEP.BarrelLength 			= 5 
SWEP.PushBackForce 			= 1
SWEP.FreeAimRadius 			= 2

SWEP.AimDownSightsTime 		= 0.55 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime 		= 0.4 -- How long it takes to go from sprinting to being able to fire.

SWEP.ReloadWhileSprint 		= true
SWEP.NoSprintWhenLocked 	= false -- You cannot sprint while reloading with this gun
SWEP.NoFireDuringSighting 	= true


SWEP.Speed = 1

SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.65
SWEP.SpeedMultShooting = 0.9
SWEP.SpeedMultMelee = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

-- Malfunctions ----------------------------------------------------------------------------------------------
SWEP.Overheat 			= true
SWEP.HeatPerShot 		= 3.3 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())
SWEP.HeatCapacity 		= 445
SWEP.HeatDissipation 	= 0.5 -- rounds' worth of heat lost per second
SWEP.HeatLockout 		= false 
SWEP.HeatDelayTime 		= 1 -- Amount of time that passes before heat begins to dissipate.
SWEP.HeatFix 			= false

if not GetConVar("arc9_stalker2_bool_heat"):GetBool() then
	SWEP.Overheat 			= false
end 

-- Melee ----------------------------------------------------------------------------------------------
SWEP.Bash = true

SWEP.BashDamage = 15
SWEP.BashRange = 65
SWEP.BashLungeRange = 0
SWEP.PreBashTime = 0.27
SWEP.PostBashTime = 0.4
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 65

SWEP.IronSights = {
    Pos = Vector(-0, -7, 0.8),
    Ang = Angle(-0, 0.15, 0),
    Magnification = 1,
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

SWEP.CrouchPos = Vector(0.0, -1, -0.25)
SWEP.CrouchAng = Angle(-0, -2, -5)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads
SWEP.SprintPos = Vector(-0, -2, 0.5) 
SWEP.SprintAng = Angle(35, 0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(2, -10, -0),
    Ang = Angle(15, 10, 10)
}

SWEP.NearWallPos = Vector(1, -5, -0.0)
SWEP.NearWallAng = Angle(10, 0, -20) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(16, 40, 10)
SWEP.CustomizeRotateAnchor = Vector(16, -3, -7)

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

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_ak74/w_ar_ak74_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false -- Don't eject shell while cycling
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_9mm.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_4" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-------------------------- TRACERS
SWEP.TracerNum 					= 1 -- Tracer every X
SWEP.TracerFinalMag 			= 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect 				= "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor 				= Color(255, 255, 210) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize 				= 1

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA 					= 1 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult 				= 1 -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS 			= nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView 				= false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng 				= Angle(0, 0, 0)

SWEP.BobSprintMult 				= 0.033 -- 
SWEP.BobWalkMult 				= 0.5 -- same but for all non sprint actions

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

SWEP.ShootSoundIndoor 			= { "Stalker2.AK74FireIndoors" }  
SWEP.DistantShootSound 			= { "Stalker2.AK74FireOutdoors" }  

SWEP.DryFireSound 				= { "Stalker2.Dry" }  
-- SWEP.TriggerDownSound 			= { "Stalker2.Trigger" }  
-- SWEP.TriggerUpSound 			= { "Stalker2.Trigger" }  

SWEP.EnterSightsSound 			= { "Stalker2.ARC9Cloth" }  
SWEP.ExitSightsSound 			= { "Stalker2.ARC9Cloth" }  
SWEP.MalfunctionSound 			= { "Stalker2.Jam" }  

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000000000000000000000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_ak74_handguard_blank"] = { Bodygroups = { {1, 1} } },
	["stalker2_ak74_stock_blank"] = { Bodygroups = { {2, 1} } },
	["stalker2_ak74_mag1_big"] = { Bodygroups = { {5, 1} } },
	["stalker2_ak74_mag2_big"] = { Bodygroups = { {6, 1} } },
	["stalker2_ak74_mag1_blank"] = { Bodygroups = { {5, 2} } },
	["stalker2_ak74_mag2_blank"] = { Bodygroups = { {6, 2} } },
	["stalker2_ak74_rail"] = { Bodygroups = { {7, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"muzzle_scp5k", "muzzle", "cod2019_muzzle" },
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
		Pos = Vector(3.8, -0, 3.6),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_magazine1",
        Category = "stalker2_ak74_mag",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Stock",
		Bone = "jnt_offset",
		InstalledElements = {"stalker2_ak74_stock_blank"},
        Category = {"cod2019_tube", "csgo_tube"},
		Pos = Vector(-1.2, -0, 1.5),
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
		MinProgress = 0.033,
        FireASAP = true,
    },
	["dryfire_sights"] = {
        Source = {"dryfire_ads"},
		MinProgress = 0.033,
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ARC9Cloth2", t = 15 / 30},
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
			{s = "Stalker2.ARC9Cloth", t = 3 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 22 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		Time = 0.5,
    },
	["draw_empty"] = {
        Source = {"draw_empty"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ARC9Cloth", t = 3 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 22 / 30},
        },
    },
	["holster_empty"] = {
        Source = {"holster_empty"},
		Time = 0.5,
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.PmMagOutIntro", t = 10 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 18 / 30},
			{s = "Stalker2.PmMagIn", t = 45 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 57 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.PmMagOutIntro", t = 10 / 30},
			{s = "Stalker2.PmMagOutOutro", t = 18 / 30},
			{s = "Stalker2.PmMagIn", t = 45 / 30},
			{s = "Stalker2.PmSlideForward", t = 62 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 65 / 30},
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.65,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 38 / 30},
			{s = "Stalker2.AK74MagTap", t = 61 / 30},
			{s = "Stalker2.AK74MagIn", t = 65 / 30},
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.AK74MagTap", t = 35 / 30},
			{s = "Stalker2.AK74MagOut", t = 38 / 30},
			{s = "Stalker2.AK74MagTap", t = 61 / 30},
			{s = "Stalker2.AK74MagIn", t = 65 / 30},
			{s = "Stalker2.AK74SlideIn", t = 96 / 30},
			{s = "Stalker2.AK74SlideOut", t = 108 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ARC9Cloth", t = 5 / 30},
			{s = "Stalker2.ARC9Cloth", t = 35 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 40 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 53 / 30},
			{s = "Stalker2.PmSlideJamBack", t = 65 / 30},
			{s = "Stalker2.PmBreakBullet", t = 70 / 30},
			{s = "Stalker2.PmSlideForward", t = 76 / 30},
			{s = "Stalker2.ARC9Cloth", t = 95 / 30},
        },
    },
	["inspect"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ARC9Cloth", t = 5 / 30},
			{s = "Stalker2.ARC9Cloth", t = 35 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 40 / 30},
			{s = "Stalker2.PmSlideJamEffort", t = 53 / 30},
			{s = "Stalker2.PmSlideJamBack", t = 65 / 30},
			{s = "Stalker2.PmBreakBullet", t = 70 / 30},
			{s = "Stalker2.PmSlideForward", t = 76 / 30},
			{s = "Stalker2.ARC9Cloth", t = 95 / 30},
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

SWEP.Hook_Deploy = function(self)
	self.MidAir = 0
return end

SWEP.Hook_Think = function(self)
	local owner = self:GetOwner() 

	if self:GetNextPrimaryFire() >= CurTime() then return end
	if !self:CanReload() then return end
	if self:GetInSights() == true then return end
	if self:GetUBGL() == true then return end
	
	if (owner:KeyPressed(IN_JUMP)) and self.MidAir == 0 then
		if self:Clip1() == 0 then
			self:PlayAnimation("jump_in_empty", 1, true)
		else
			self:PlayAnimation("jump_in", 1, true)
		end
		self.MidAir = 1
	end
	if not owner:OnGround() then
		self.MidAir = 1
	end
	if self.MidAir == 1 and owner:OnGround() then -- Jump End
		self.MidAir = 0
		if self:Clip1() == 0 then
			self:PlayAnimation("jump_end_empty", 1, false)
		else
			self:PlayAnimation("jump_end", 1, false)
		end
	end
return end

SWEP.Hook_TranslateAnimation = function (self, anim)
	if self.MidAir == 1 then
	    if anim == "idle" then
            return "jump_loop"
		end
	end
end	

local heatCapacity = SWEP.HeatCapacity
SWEP.Hook_PrimaryAttack = function(self)
	local heatAmount = self:GetHeatAmount()
	local owner = self:GetOwner()
	
	local heatPercentage = (heatAmount / heatCapacity) * 100
	-- print("Heat Percentage: " .. heatPercentage .. "%")
	if heatPercentage >= 75 then
		if math.random(1, 100) <= 7.5 then
			self:SetJammed(true)	
		end
	elseif heatPercentage >= 50 then
		if math.random(1, 100) <= 2.5 then
			self:SetJammed(true)
		end
	elseif heatPercentage >= 25 then
		if math.random(1, 100) <= 0.5 then
			self:SetJammed(true)
		end
	end
	
	if self:GetJammed() == true then
		owner:EmitSound("Stalker2.Jam")
	end
	
	-- print(GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
	-- print(GetConVar("arc9_stalker2_bool_heat"):GetBool())
end

SWEP.CustomPoseParamsHandler = function (self, ent, iswm)
    local owner = self:GetOwner()
    local vm = owner:GetViewModel()
    local speed = 3
	
	if self:GetJammed() == true then
		vm:SetPoseParameter("malfunction", 1)
	else
		vm:SetPoseParameter("malfunction", 0)
	end
	
    if not self.blend_walk then
        self.blend_walk = 0
        self.blend_walk_right = 0
        self.blend_walk_left = 0
        self.blend_walk_bwd = 0
    end

    if owner:KeyDown(IN_FORWARD) then
        self.blend_walk = math.Approach(self.blend_walk, 0.4, speed * FrameTime())
    else
        self.blend_walk = math.Approach(self.blend_walk, 0, speed * FrameTime())
    end

    if owner:KeyDown(IN_MOVERIGHT) then
        self.blend_walk_right = math.Approach(self.blend_walk_right, 1, speed * FrameTime())
    else
        self.blend_walk_right = math.Approach(self.blend_walk_right, 0, speed * FrameTime())
    end

    if owner:KeyDown(IN_MOVELEFT) then
        self.blend_walk_left = math.Approach(self.blend_walk_left, 1, speed * FrameTime())
    else
        self.blend_walk_left = math.Approach(self.blend_walk_left, 0, speed * FrameTime())
    end

    if owner:KeyDown(IN_BACK) then
        self.blend_walk_bwd = math.Approach(self.blend_walk_bwd, 1, speed * FrameTime())
    else
        self.blend_walk_bwd = math.Approach(self.blend_walk_bwd, 0, speed * FrameTime())
    end

    vm:SetPoseParameter("blend_walk", self.blend_walk)
    vm:SetPoseParameter("blend_walk_right", self.blend_walk_right)
    vm:SetPoseParameter("blend_walk_left", self.blend_walk_left)
    vm:SetPoseParameter("blend_walk_bwd", self.blend_walk_bwd)
end