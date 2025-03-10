AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_groza")

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"
SWEP.SubCategory = "Assault Rifles"
-- SWEP.Category1 = "SCP: SL"
-- SWEP.Category2 = "Special Weaponry"

SWEP.AdminOnly = false
SWEP.PrintName = "GROM S-14"
SWEP.TrueName = "OTs-14 Groza"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "9x39mm",
	Origin = "Soviet Union",
	Year = "1990",
	Weight = "3.5kg (7.7lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The OTs-14-4A is the most common variant of the rifle, chambered in 9x39mm. A slightly curved magazine was developed for the OTs-14-4A, but the gun can also take straight magazines originally introduced for the 9A-91 compact assault rifle. This version of the Groza holds 20 rounds.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/ar_groza/v_ar_groza.mdl"
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
SWEP.DamageMax			 = 18 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 1.5

SWEP.RangeMax			 = 250 / 0.0254
SWEP.RangeMin 			 = SWEP.RangeMax / 3

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.48
SWEP.Penetration		 = 450/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 300 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 706
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = -1,
    },
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
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 20
SWEP.SupplyLimit    = 4
SWEP.SecondarySupplyLimit = 3 -- Amount of reserve UBGL magazines you can take.

SWEP.AmmoPerShot    = 1 
SWEP.InfiniteAmmo   = false 
SWEP.BottomlessClip = false 

-------------------------- UBGL
-- Underbarrel weapons
-- Stats that BEGIN with UBGL are actual specific stats
SWEP.UBGL = true
SWEP.UBGLAmmo = "smg1_grenade"

SWEP.ShouldDropMagUBGL = false
SWEP.ShootEntUBGL = "arc9_stalker2_proj_40mm_he"
SWEP.ShootEntForceUBGL = 5000

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 2534252
SWEP.RecoilPatternDrift = 100 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
    0.0,
	-21.80,
	6.01,
	-6.84,
	-6.91,
	-1.55,
	1.36,
	5.08,
	3.58,
	6.71,
	4.24,
	5.01,
	7.59,
	5.44,
	7.77,
	9.06,
	7.22,
	9.33,
	11.31,
	9.58,
	8.64,
	10.49,
	12.24,
	11.31,
	10.42,
	12.05,
	13.59,
	12.14,
	13.61,
	15.00
}

SWEP.Recoil 								= (0.7) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.8

SWEP.RecoilRandomUp 						= 0.1
SWEP.RecoilRandomSide 						= 0.33

SWEP.RecoilAutoControl 						= 1.7
SWEP.RecoilAutoControlMultShooting       	= 0.25

SWEP.RecoilDissipationRate 					= 35 
SWEP.RecoilResetTime 						= 0.033
SWEP.RecoilFullResetTime 					= 0.35

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

---- Weapon Visual Recoil
SWEP.UseVisualRecoil 						= true
SWEP.PhysicalVisualRecoil 					= false 

SWEP.VisualRecoilMultHipFire 				= 0.1
SWEP.VisualRecoilMultSights 				= 0.005
SWEP.VisualRecoilMultCrouch 				= 1

SWEP.VisualRecoilUp 						= 1 
SWEP.VisualRecoilSide 						= 1.5
SWEP.VisualRecoilRoll 						= 100

SWEP.VisualRecoilPunch 						= 20
SWEP.VisualRecoilPunchMultSights 			= 8

SWEP.RecoilKick 							= 1.0 -- Camera recoil
SWEP.RecoilKickDamping 						= 25.0 -- Camera recoil damping

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.0204 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.00111 -- Applied per unit of recoil.
SWEP.SpreadMultSights			= -SWEP.Spread
SWEP.SpreadMultCrouch 			= 0.85
SWEP.SpreadMultMove 			= 1.5
SWEP.SpreadMultMidAir 			= 2.5

SWEP.RecoilModifierCap 			= SWEP.RecoilMax
SWEP.RecoilModifierCapSights 	= 0

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway 						= 0 -- How much the gun sways
SWEP.SwayAddSighted 			= 0.35
SWEP.SwayAddMidAir 				= 1.0 

SWEP.AimDownSightsTime 			= 0.55
SWEP.SprintToFireTime 			= 0.37
SWEP.NoFireDuringSighting 		= true

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02

SWEP.Speed 						= 1
SWEP.SpeedMultSights 			= 0.92
SWEP.SpeedMultShooting			= 1

SWEP.BarrelLength 				= 32 
SWEP.PushBackForce 				= 1
SWEP.FreeAimRadius 				= 2

-- Malfunctions ----------------------------------------------------------------------------------------------
SWEP.Overheat 			= true
SWEP.HeatPerShot 		= 1.76 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())
SWEP.HeatCapacity 		= 2700
SWEP.HeatDissipation 	= 0.1 -- rounds' worth of heat lost per second
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
SWEP.PreBashTime = 0.4
SWEP.PostBashTime = 0.45
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 70

SWEP.IronSights = {
    Pos = Vector(-0, -2, 0.45),
    Ang = Angle(-0, 2.1, 0),
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
SWEP.SprintPos = Vector(1, -2, 0.35) 
SWEP.SprintAng = Angle(35, 0, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, -20, 0)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(10, 33, 8)
SWEP.CustomizeRotateAnchor = Vector(10, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 5
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.3

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModelUBGL 			= "models/weapons/arc9/stalker2/ar_ak74/w_ar_ak74_ma.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_groza/w_ar_groza_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 4 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false -- Don't eject shell while cycling
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_556.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_6" } -- m79_smoke_c m79_shockwave
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
	[0] = "bullets",
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.GrozaFire" }
SWEP.ShootSoundSilenced       	= { "Stalker2.AK74FireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.5K.MK18TailIndoor" }  
SWEP.DistantShootSound 			= { "Stalker2.5K.MK18TailOutdoor" }  
SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.5K.SMGSilTailIndoor" }  
SWEP.DistantShootSoundSilenced  = { "Stalker2.5K.RifleSilTailOutdoor" }  

SWEP.DryFireSound 				= { "Stalker2.Dry" }  
SWEP.TriggerDownSound 			= { "Stalker2.Trigger" }  
SWEP.TriggerUpSound 			= { "Stalker2.Trigger" }  

SWEP.EnterSightsSound 			= { "Stalker2.5K.AimIn" }  
SWEP.ExitSightsSound 			= { "Stalker2.5K.AimOut" }  
SWEP.MalfunctionSound 			= { "Stalker2.Jam" }  

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_groza_rail2"] = { Bodygroups = { {2, 1} } },
	["stalker2_groza_rail3"] = { Bodygroups = { {3, 1} } },
	["stalker2_groza_mag_big"] = { Bodygroups = { {6, 1} } },
	["stalker2_groza_mag_drum"] = { Bodygroups = { {6, 2} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(10.5, 0, 1.65),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"stalker2_groza_rail3"},
        Bone = "jnt_offset",
		LaserCorrectionAngle = Angle(-0.0, 0, 0),
		Pos = Vector(1.45, -0.85, 1.65),
        Ang = Angle(-0, 0, 90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_groza_rail2"},
		CorrectiveAng = Angle(-0.0, 0.0, 0),
		Pos = Vector(0, -0, 4.1),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "stalker2_groza_mag",
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
        Bone = "jnt_offset",
        Pos = Vector(-1.6, -0.7, 0.9),
		Ang = Angle(-0, 0, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(-4.6, -0.7, 1.8),
		Ang = Angle(0, 0, -0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/ar_groza/s_ar_groza_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_groza/s_ar_groza_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/ar_groza/s_ar_groza_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/stalker2/ar_groza/s_ar_groza_4.mdl",
        Category = "stickers",
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = true -- Instantly go to idle_sprint instead of playing enter_sprint.
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
		MinProgress = 0.45,
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
	["fire_sights_empty"] = {
        Source = {"fire_ads"},
    },
	["dryfire"] = {
        Source = {"walk_end"},
        FireASAP = true,
    },
	["dryfire_sights"] = {
        Source = {"fire_scope"},
        FireASAP = true,
    },
	--------------------------------------------------- UBGL
	["enter_ubgl"] = {
        Source = {"underbarrel_in"},
		 MinProgress = 0.7,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.GrozaGPIn", t = 4 / 30},
        },
    },
	["idle_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["fire_ubgl"] = {
        Source = {"underbarrel_shoot"},
    },
	["reload_ubgl"] = {
        Source = {"underbarrel_reload"},
    },
    ["exit_ubgl"] = {
        Source = {"underbarrel_out"},
		MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.GrozaGPOut", t = 6 / 30},
        },
    },
	["enter_sights_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["idle_sights_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["exit_sights_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["enter_sprint_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["idle_sprint_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
	["exit_sprint_ubgl"] = {
        Source = {"underbarrel_idle"},
    },
    --------------------------------------------------- Draw & Holster
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
	["ready"] = {
        Source = {"ready"},
		EventTable = {
			{s = "Stalker2.ARC9Cloth", t = 5 / 30},
			{s = "Stalker2.ARC9Cloth", t = 40 / 30},
			{s = "Stalker2.GrozaMagIn", t = 57 / 30},
			{s = "Stalker2.GrozaMagInOutro", t = 70 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 80 / 30},
			{s = "Stalker2.GrozaSlideIn", t = 97 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 109 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.65,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOut", t = 16 / 30},
			{s = "Stalker2.GrozaMagIn", t = 58 / 30},
			{s = "Stalker2.GrozaMagInOutro", t = 65 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.72,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOut", t = 16 / 30},
			{s = "Stalker2.GrozaMagIn", t = 58 / 30},
			{s = "Stalker2.GrozaMagInOutro", t = 65 / 30},
			{s = "Stalker2.GrozaSlideIn", t = 83 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 95 / 30},
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.65,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOut", t = 16 / 30},
			{s = "Stalker2.GrozaMagIn", t = 63 / 30},
			{s = "Stalker2.GrozaMagInOutro", t = 73 / 30},
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOut", t = 16 / 30},
			{s = "Stalker2.GrozaMagIn", t = 63 / 30},
			{s = "Stalker2.GrozaMagInOutro", t = 73 / 30},
			{s = "Stalker2.GrozaSlideIn", t = 89 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 102 / 30},
        },
    },
	
	["reload_drum"] = {
        Source = {"reload_drum"},
        MinProgress = 0.65,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOutBig", t = 22 / 30},
			{s = "Stalker2.GrozaMagInBig", t = 76 / 30},
        },
    },
	["reload_empty_drum"] = {
        Source = {"reload_drum_empty"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GrozaMagOutBig", t = 22 / 30},
			{s = "Stalker2.GrozaMagInBig", t = 76 / 30},
			{s = "Stalker2.GrozaSlideIn", t = 110 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 123 / 30},
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
			{s = "Stalker2.GrozaSlideJamIn", t = 49 / 30},
			{s = "Stalker2.GrozaSlideJamEffort", t = 55 / 30},
			{s = "Stalker2.GrozaSlideJamEffort", t = 63 / 30},
			{s = "Stalker2.GrozaSlideJamOut", t = 74 / 30},
			{s = "Stalker2.AK74Break", t = 77 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 85 / 30},
			{s = "Stalker2.GrozaSlideHit", t = 96 / 30},
        },
    },
	-- ["inspect"] = {
        -- Source = {"ready"},
        -- MinProgress = 0.97,
        -- FireASAP = true,
    -- },
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
		self:PlayAnimation("jump_in", 1, true)
		self.MidAir = 1
	end
	if not owner:OnGround() then
		self.MidAir = 1
	end
	if self.MidAir == 1 and owner:OnGround() then -- Jump End
		self.MidAir = 0
		self:PlayAnimation("jump_end", 1, false)
	end
return end

SWEP.Hook_PrimaryAttack = function(self)
	
	if self:Clip1() == 1 then return end
	
	local heatAmount = self:GetHeatAmount()
	local heatCapacity = self.HeatCapacity

	if heatCapacity > 0 then
		local heatPercentage = (heatAmount / heatCapacity) * 100

		local minHeat = 10 -- Minimum heat percentage where chance starts
		local maxHeat = 75 -- Heat percentage where chance reaches full extent
		local maxChance = 4 -- Maximum chance value

		local chance = 0
		if heatPercentage >= minHeat then
			if heatPercentage <= maxHeat then
				chance = ((heatPercentage - minHeat) / (maxHeat - minHeat)) * maxChance
			else
				chance = maxChance
			end
		end
		
		-- print("Percentage: " .. heatPercentage .. "%")
		-- print("Chance: " .. chance .. "%")
			
		if math.random(1, 100) <= chance then
			self:SetJammed(true)
		end
	end
	
	if self:GetJammed() == true then
		self:EmitSound("Stalker2.Jam")
	end
end

SWEP.Hook_TranslateAnimation = function (self, anim)
	if self.MidAir == 1 then
	    if anim == "idle" then
            return "jump_loop"
		end
	end
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
        self.blend_walk = math.Approach(self.blend_walk, 1, speed * FrameTime())
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
