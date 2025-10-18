AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_asval")

SWEP.SubCategory = "Assault Rifles"

SWEP.PrintName = "AS Lavina"
SWEP.TrueName = "AS Val"

SWEP.Slot = 2

SWEP.Class = "Assault Rifle"
SWEP.Trivia = {
    Caliber = "9x39mm",
	Origin = "Germany",
	Year = "1987",
	Weight = "2.5kg (5.5lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[Derived from the Vintar sniper rifle, this silenced assault rifle enables effective firing without exposing the shooter's position.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/ar_val/v_ar_val.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_rif_galil.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-5, 4, -6.5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-4, 3, -6), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 = 20 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 15 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 1 
SWEP.ArmorPiercing		 = 0.4
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 920 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 667
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
SWEP.GunDamagePerShot 	= 1.79 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "ar2" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 20
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 4325
SWEP.RecoilPatternDrift = 151 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
	22,
	18,
	15,
	12,
	9,
	7,
	5,
	3,
	0.5,
	-1,
	-3,
	-4,
	-5,
	-7,
	-7.6,
	-9.5,
	-9,
	-11,
	-10,
	-13,
	-12.5,
	-14,
	-15,
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
SWEP.Spread 					= 0.0146 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

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
    Pos = Vector(-0, -0.5, 0.8),
    Ang = Angle(-0, 0.15, 0),
    Magnification = 1.17,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(-0.0, -1, 1.0) 
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
SWEP.DropMagazineTime 			= 2.25

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_val/w_ar_val_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
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

SWEP.MuzzleParticle 			= { "muzzleflash_ar" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
	[1] = "bullets", "bullets2",
}
SWEP.HideBones = {
"jnt_clip_base",
"bullets2"
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.ASVALFire" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.TailArSilenced" }  
SWEP.DistantShootSound 			= { "Stalker2.TailArSilenced" }  

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
	["stalker2_asval_mag_ext_1"] = { Bodygroups = { {2, 1} } },
	["stalker2_asval_mag_ext_2"] = { Bodygroups = { {3, 1} } },
	-- ["stalker2_m416_front_blank"] = { Bodygroups = { {6, 1} } },
	-- ["stalker2_m416_rear_blank"] = { Bodygroups = { {7, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_second",
        Category = "stalker2_asval_mag",
		Pos = Vector(0, -0, 0),
    },
	{
        PrintName = "Ammo",
        Bone = "bullets",
        Category = "go_ammo",
		Pos = Vector(-0, -0, 4),
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
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "jnt_offset",
        Pos = Vector(2.0, -0.35, 1.4),
		Ang = Angle(-0, 0, -0),
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(2.83, -0.25, 2.53),
		Ang = Angle(0, 0, 16),
		Scale = 0.9,
		CosmeticOnly = true,
    },
	{
		PrintName = "Sticker 1",
        StickerModel = "models/weapons/arc9/stalker2/ar_val/s_ar_val_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_val/s_ar_val_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/ar_val/s_ar_val_3.mdl",
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
		MinProgress = 0.1,
        FireASAP = true,
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
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 5 / 30},
        },
		Time = 0.75,
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.75,
		MagSwapTime = 2,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 3 / 30},
			{s = "Stalker2.ASVALMagOutIntro", t = 28 / 30},
			{s = "Stalker2.ASVALMagOutOutro", t = 33 / 30},
			{s = "Stalker2.ASVALMagIn", t = 66 / 30},
			{s = "Stalker2.ArRattleMedium", t = 83 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.8,
		MagSwapTime = 2,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 3 / 30},
			{s = "Stalker2.ASVALMagOutIntro", t = 28 / 30},
			{s = "Stalker2.ASVALMagOutOutro", t = 33 / 30},
			{s = "Stalker2.ArRattleMedium", t = 63 / 30},
			{s = "Stalker2.ASVALMagIn", t = 66 / 30},
			{s = "Stalker2.ASVALSlideBack", t = 93 / 30},
			{s = "Stalker2.ASVALSlideForward", t = 102 / 30},
        },
    },
	
	["reload_ext"] = {
        Source = {"reload_ext"},
        MinProgress = 0.75,
		MagSwapTime = 2.5,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.ArRattleMedium", t = 3 / 30},
			{s = "Stalker2.ASVALMagOutIntro", t = 33 / 30},
			{s = "Stalker2.ASVALMagOutOutro", t = 37 / 30},
			{s = "Stalker2.ASVALMagIn", t = 67 / 30},
			{s = "Stalker2.ArRattleMedium", t = 83 / 30},
        },
    },
	["reload_empty_ext"] = {
        Source = {"reload_ext_empty"},
        MinProgress = 0.8,
		MagSwapTime = 2.5,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 3 / 30},
			{s = "Stalker2.ASVALMagOutIntro", t = 33 / 30},
			{s = "Stalker2.ASVALMagOutOutro", t = 37 / 30},
			{s = "Stalker2.ASVALMagIn", t = 67 / 30},
			{s = "Stalker2.ArRattleMedium", t = 83 / 30},
			{s = "Stalker2.ASVALSlideBack", t = 103 / 30},
			{s = "Stalker2.ASVALSlideForward", t = 112 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 2 / 30},
			{s = "Stalker2.ArRattleWeak", t = 36 / 30},
			{s = "Stalker2.ASVALSlideJamBack", t = 59 / 30},
			{s = "Stalker2.ASVALSlideBack", t = 75 / 30},
			{s = "Stalker2.ASVALBreakBullet", t = 78 / 30},
			{s = "Stalker2.ASVALSlideForward", t = 95 / 30},
			{s = "Stalker2.ASVALSlideJamHit", t = 111 / 30},
			{s = "Stalker2.ArRattleMedium", t = 125 / 30},
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


include("weapon_template_stalker2_ar.lua")