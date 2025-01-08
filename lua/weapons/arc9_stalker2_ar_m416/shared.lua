AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_m416")

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"
SWEP.SubCategory = "Assault Rifles"

SWEP.AdminOnly = false
SWEP.PrintName = "AR416"
SWEP.TrueName = "HK416A5"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "5.56x45mm",
	Origin = "Germany",
	Year = "2005",
	Weight = "3kg (6.7bs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The Heckler & Koch HK416 assault rifle is an AR-15-pattern carbine based on the M4 carbine, with the principle feature being a gas piston system based on the Armalite AR-18 derived mechanism of the Heckler & Koch G36.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/ar_m416/v_ar_m416.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_m4a1.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-2, 4, -7), -- non tpik (while on ground, on npc etc)
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
SWEP.DamageMax			 = 16 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 1.5

SWEP.RangeMax			 = 300 / 0.0254
SWEP.RangeMin 			 = SWEP.RangeMax / 3

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 900 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 750
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
SWEP.ClipSize 		= 30
SWEP.SupplyLimit    = 4

SWEP.AmmoPerShot    = 1 
SWEP.InfiniteAmmo   = false 
SWEP.BottomlessClip = false 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 63263758
SWEP.RecoilPatternDrift = 10 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
	0,
	14,
	4,
	15.5,
	10,
	20,
	16,
	10,
	12,
	15,
	13,
	17,
	20.5,
	23,
	20,
	20,
	19,
	22,
	24,
	22,
	25,
	22,
	25,
	22,
	25,
	24,
	26,
	28,
	28,
	25,
	26,
}

SWEP.Recoil 								= (1.8 / 3) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())

SWEP.RecoilRandomUp 						= 0
SWEP.RecoilRandomSide 						= 0.1

SWEP.RecoilAutoControl 						= 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilDissipationRate 					= 20
SWEP.RecoilResetTime 						= 0.25
SWEP.RecoilFullResetTime 					= 1

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize / 2 -- MaxRadiusExtensionModifier

---- Weapon Visual Recoil
SWEP.UseVisualRecoil 						= true
SWEP.PhysicalVisualRecoil 					= false 

SWEP.VisualRecoilMultHipFire 				= 0.1
SWEP.VisualRecoilMultSights 				= 0.03
SWEP.VisualRecoilMultCrouch 				= 0.0

SWEP.VisualRecoilUp 						= 1 
SWEP.VisualRecoilUpAddSighted 				= -1
SWEP.VisualRecoilSide 						= 3
SWEP.VisualRecoilSideAddSighted 			= -3
SWEP.VisualRecoilRoll 						= 150

SWEP.VisualRecoilPunch 						= 8
SWEP.VisualRecoilPunchMultSights 			= 1

SWEP.RecoilKick 							= 0.5 -- Camera recoil
SWEP.RecoilKickDamping 						= 0.25 -- Camera recoil damping

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.028 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.0133 / 5
SWEP.SpreadAddFirstShot 		= -SWEP.Spread

SWEP.SpreadAddMove 				= SWEP.Spread * 0.1
SWEP.SpreadAddMidAir 			= SWEP.Spread * 3
SWEP.SpreadAddCrouch 			= -SWEP.Spread * 0.35
SWEP.SpreadAddSights 			= -SWEP.Spread * 1.44

SWEP.RecoilModifierCap 			= SWEP.RecoilMax

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway 					= 0 -- How much the gun sways
SWEP.SwayAddSighted 		= 0.35
SWEP.SwayAddMidAir 			= 1.0 

SWEP.BarrelLength 			= 32 
SWEP.PushBackForce 			= 1
SWEP.FreeAimRadius 			= 2

SWEP.AimDownSightsTime 		= 0.3
SWEP.SprintToFireTime 		= 0.4
SWEP.NoFireDuringSighting 	= true

SWEP.Speed = 1
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.9

-- Malfunctions ----------------------------------------------------------------------------------------------
SWEP.Overheat 			= true
SWEP.HeatPerShot 		= 1.04 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())
SWEP.HeatCapacity 		= 1500
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
    Pos = Vector(-0.03, -1, 0.8),
    Ang = Angle(-0.1, 0.5, 0),
    Magnification = 1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 2, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(-0.0, -0, 0.6) 
SWEP.ActiveAng = Angle(0, 1, 0)

SWEP.MovingPos =  Vector(-0, -0, -0.2)
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
    Pos = Vector(2, -5, -0),
    Ang = Angle(15, 10, 10)
}

SWEP.NearWallPos = Vector(1, -5, -0.0)
SWEP.NearWallAng = Angle(10, 0, -20) 

SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(12, 32, 7)
SWEP.CustomizeRotateAnchor = Vector(11, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.0

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

SWEP.ShellModel 				= "models/shells/shell_556.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_ar" } -- m79_smoke_c m79_shockwave
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
SWEP.ShootSound               	= { "Stalker2.M416Fire" }
SWEP.ShootSoundSilenced       	= { "Stalker2.M416FireSil" } 

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

SWEP.DefaultBodygroups = "0000000000000000000000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_m416_mag_drum"] = { Bodygroups = { {5, 1} } },
	["stalker2_m416_stock_blank"] = { Bodygroups = { {4, 1} } },
	["stalker2_m416_front_blank"] = { Bodygroups = { {6, 1} } },
	["stalker2_m416_rear_blank"] = { Bodygroups = { {7, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(19.7, 0, 2.64),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
		Scale = 0.85,
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "jnt_offset",
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(12.5, -0, 1.45),
        Ang = Angle(-180, 180, 0),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "jnt_offset",
		Pos = Vector(15.75, -1.1, 2.65),
        Ang = Angle(-0, 0, 90),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_m416_front_blank", "stalker2_m416_rear_blank"},
		CorrectiveAng = Angle(-0.2, -0.15, 0),
		Pos = Vector(4.5, -0, 4),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "stalker2_m416_mag",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Ammo",
        Bone = "jnt_bullet",
        Category = "go_ammo",
		Pos = Vector(-2.5, -0, -0.5),
    },
	-- {
        -- PrintName = "Trigger",
		-- Bone = "jnt_trigger",
        -- Category = "stalker2_trigger_1",
		-- Pos = Vector(0, -0, -1),
    -- },
	-- {
        -- PrintName = "Fire Selector",
		-- Bone = "jnt_selector_level",
        -- Category = "stalker2_fireselector_1",
		-- Pos = Vector(0, -0, -1),
    -- },
	{
        PrintName = "Stock",
		Bone = "jnt_offset",
		InstalledElements = {"stalker2_m416_stock_blank"},
        Category = {"cod2019_tube", "csgo_tube"},
		Pos = Vector(-1.2, -0, 2.7),
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
        Pos = Vector(5.2, -0.72, 2.2),
		Ang = Angle(-0, 0, -0),
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(1.8, -0.35, 3.55),
		Ang = Angle(0, 0, -0),
		Scale = 0.9,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/ar_m416/s_ar_m416_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_m416/s_ar_m416_2.mdl",
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
			{s = "Stalker2.ARC9Cloth", t = 3 / 30},
			{s = "Stalker2.ARC9Cloth2", t = 22 / 30},
        },
    },
	["holster"] = {
        Source = {"holster"},
		Time = 0.5,
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.M416MagOut", t = 11 / 30},
			{s = "Stalker2.M416MagIn", t = 47 / 30},
			{s = "Stalker2.M416MagInOutro", t = 57 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
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
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.8,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.M416MagOut", t = 11 / 30},
			{s = "Stalker2.M416MagIn", t = 47 / 30},
			{s = "Stalker2.M416MagInOutro", t = 57 / 30},
			{s = "Stalker2.M416SlideHit", t = 71 / 30},
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
                t = 0.77,
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
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.M416MagOutBig", t = 11 / 30},
			{s = "Stalker2.M416MagInBig", t = 57 / 30},
			{s = "Stalker2.M416MagInOutroBig", t = 66 / 30},
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
        MinProgress = 0.8,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.M416MagOutBig", t = 11 / 30},
			{s = "Stalker2.M416MagInBig", t = 57 / 30},
			{s = "Stalker2.M416MagInOutroBig", t = 66 / 30},
			{s = "Stalker2.M416SlideHit", t = 82 / 30},
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
			{s = "Stalker2.ARC9Cloth", t = 2 / 30},
			{s = "Stalker2.ARC9Cloth", t = 15 / 30},
			{s = "Stalker2.AK74SlideJamIn", t = 32 / 30},
			{s = "Stalker2.M416SlideIn", t = 36 / 30},
			{s = "Stalker2.AK74Break", t = 47 / 30},
			{s = "Stalker2.M416SlideOut", t = 62 / 30},
			{s = "Stalker2.GrozaSlideIn", t = 87 / 30},
			{s = "Stalker2.GrozaSlideOut", t = 107 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.82,
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

SWEP.Hook_TranslateAnimation = function (self, anim)
	if self.MidAir == 1 then
	    if anim == "idle" then
            return "jump_loop"
		end
	end
end	

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
        self.blend_walk = math.Approach(self.blend_walk, 0.8, speed * FrameTime())
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
