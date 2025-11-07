AddCSLuaFile()
SWEP.Base = "weapon_template_stalker2_sr"

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_threeliner")

SWEP.SubCategory = "Sniper Rifles"

SWEP.PrintName = "Three-Line Rifle"
SWEP.TrueName = "Mosin Nagant Model 1938 Carbine Sniper"

SWEP.Slot = 2
SWEP.Spawnable = true
SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"


SWEP.Class = "Sniper Rifle"
SWEP.Trivia = {
    Caliber = "7.62x54mm",
	Origin = "Russia",
	Year = "1889",
	Weight = "4 kg (8 lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[EDIT ME]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/sr_threeliner/v_sr_threeliner.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_snip_scout.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-8, 4, -7), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-8, 5, -8), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 = 100 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3

SWEP.RangeMin 			 = 40 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 6
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 5 
SWEP.ArmorPiercing		 = 0.2
SWEP.Penetration		 = 300/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 822 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 45
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 2500
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 5 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "sniperPenetratedRound" 

SWEP.ChamberSize 	= 0 
SWEP.ClipSize 		= 5
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 63263758
SWEP.RecoilPatternDrift = 1 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
-30,
-35,
-40,
-45,
-50
}

SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilRandomUp 						= 1
SWEP.RecoilRandomSide 						= 0.5

SWEP.RecoilAutoControl 						= 3
SWEP.RecoilAutoControlMultShooting       	= 0.25

SWEP.RecoilDissipationRate 					= 35 
SWEP.RecoilResetTime 						= 0.033
SWEP.RecoilFullResetTime 					= 0.35

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.0417 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.001 -- Applied per unit of recoil.
SWEP.SpreadMultSights			= -SWEP.Spread
SWEP.SpreadMultCrouch 			= 0.85
SWEP.SpreadMultMove 			= 1.5
SWEP.SpreadMultMidAir 			= 2.5

SWEP.RecoilModifierCap 			= SWEP.RecoilMax
SWEP.RecoilModifierCapSights 	= 0

SWEP.BarrelLength 				= 50
SWEP.ShotgunReload 				= true

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 60

SWEP.IronSights = {
    Pos = Vector(-3.1, -1.5, 3.0),
    Ang = Angle(-0.9, 0.3, 3),
    Magnification = 1.15,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(0.75, 2.0, 1.5) 
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
SWEP.ReloadNoSprintPos = false -- No sprintpos during reloaim
SWEP.SprintPos = Vector(0, -0, -1.15) 
SWEP.SprintAng = Angle(15, -10, -30)
SWEP.SprintMidPoint = {
    Pos = Vector(0, -0, -0),
    Ang = Angle(10, 5, -30)
}

SWEP.NearWallPos = Vector(0, -0, -10.0)
SWEP.NearWallAng = Angle(-5, 50, 10) 


SWEP.CustomizeAng = Angle(90, -0, 0)
SWEP.CustomizePos = Vector(15, 42, 7)
SWEP.CustomizeRotateAnchor = Vector(15, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= false

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 0.7

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(80, -60, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/ar_ak74/w_ar_ak74_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= true
SWEP.NoShellEjectManualAction 	= true -- Don't eject shell while cycling
SWEP.ShellCorrectAng 			= Angle(0, -90, 0)	
SWEP.ShellScale					= 0.75 
SWEP.ShellModel 				= "models/shells/shell_762nato.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= { "muzzleflash_6" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
	-- [1] = "bullets",
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               	= { "Stalker2.threelinerFire" } 
SWEP.ShootSoundSilenced       	= { "Stalker2.ForaFireSil" } 

SWEP.ShootSoundIndoor 			= { "Stalker2.IntSrLarge" }  
SWEP.DistantShootSound 			= { "Stalker2.ExtAClose" }  
SWEP.ShootSoundIndoorSilenced 	= { "Stalker2.ExtSrSil" }  
SWEP.DistantShootSoundSilenced  = { "Stalker2.ExtSrSil" }  

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

SWEP.DefaultBodygroups = "00000000000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_threeliner_rail_bottom"] = { Bodygroups = { {14, 1} } },
	["stalker2_threeliner_rail_top"] = { Bodygroups = { {15, 1} } },
	["stalker2_threeliner_rail_bottom2"] = { Bodygroups = { {16, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Muzzle",
		Bone = "jnt_offset",
        Category = {"scp5k_muzzle", "muzzle", "cod2019_muzzle" },
		Pos = Vector(34.3, 0, 3.22),
        Ang = Angle(-0, 0, -0),
        Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "Grip",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
		InstalledElements = {"stalker2_threeliner_rail_bottom"},
        Bone = "jnt_offset",
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(13.6, -0, 1),
        Ang = Angle(-180, 180, 0),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"stalker2_threeliner_rail_bottom2"},
        Bone = "jnt_offset",
		Pos = Vector(27.1, -0, 2.3),
        Ang = Angle(-0, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_threeliner_rail_top"},
		CorrectiveAng = Angle(-0.95, 1.0, 0),
		Pos = Vector(11, -0, 4.1),
        Ang = Angle(-0, 0, -0),
    },
	-- {
        -- PrintName = "Magazine",
		-- Bone = "jnt_clip_base",
        -- Category = "stalker2_dnipro_mag",
		-- Pos = Vector(0, -0, 0),
    -- },
	{
        PrintName = "Ammo",
        Bone = "jnt_shell",
        Category = "go_ammo",
		Pos = Vector(-8, -0, -0.5),
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
	-- {
        -- PrintName = "Stock",
		-- Bone = "jnt_offset",
		-- InstalledElements = {"stalker2_m416_stock_blank"},
        -- Category = {"cod2019_tube", "csgo_tube"},
		-- Pos = Vector(-1.2, -0, 2.7),
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
        Pos = Vector(-0.5, -0.9, 2.2),
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
        StickerModel = "models/weapons/arc9/stalker2/ar_dnipro/s_ar_dnipro_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 2",
        StickerModel = "models/weapons/arc9/stalker2/ar_dnipro/s_ar_dnipro_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 3",
        StickerModel = "models/weapons/arc9/stalker2/ar_dnipro/s_ar_dnipro_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker 4",
        StickerModel = "models/weapons/arc9/stalker2/ar_dnipro/s_ar_dnipro_4.mdl",
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
	-- ["enter_sights"] = {
        -- Source = {"idle_to_aim"},
    -- },
	["idle_sights"] = {
        Source = {"basepose"},
    },
	-- ["exit_sights"] = {
        -- Source = {"aim_to_idle"},
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
		EjectAt = 0.7,
		EventTable = {
			{s = "Stalker2.ThreeLinerUp", t = 11 / 30},
			{s = "Stalker2.ThreeLinerSlideBack", t = 13 / 30},
			{s = "Stalker2.ThreeLinerForward", t = 30 / 30},
			{s = "Stalker2.ThreeLinerSlideDown", t = 33 / 30},
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
		Time = 0.75,
		EventTable = {
			{s = "Stalker2.ArRattleStrong", t = 1 / 30},
        },
    },
    --------------------------------------------------- Reload
    ["reload_start"] = {
        Source = {"reload_tactical"},
		-- Time = 1,
        MinProgress = 0.8,
		RestoreAmmo = 1,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.ThreeLinerUp", t = 11 / 30},
			{s = "Stalker2.ThreeLinerSlideBack", t = 16 / 30},
			{s = "Stalker2.ThreeLinerTactical", t = 60 / 30},
        },
    },
	["reload_insert"] = {
        Source = {"reload_cycle"},
		-- Time = 1,
        MinProgress = 0.5,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.ThreeLinerTactical", t = 0 / 30},
			{s = "Stalker2.SgRattleWeak", t = 8 / 30},
        },
    },
	["reload_finish"] = {
        Source = {"reload_out"},
		-- Time = 1,
        MinProgress = 0.75,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ThreeLinerForward", t = 5 / 30},
			{s = "Stalker2.ThreeLinerSlideDown", t = 14 / 30},
        },
    },
	["reload_start_empty"] = {
        Source = {"reload_full_in"},
		-- Time = 1,
        MinProgress = 0.8,
        FireASAP = false,
		RestoreAmmo = 1,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.ThreeLinerUp", t = 11 / 30},
			{s = "Stalker2.ThreeLinerSlideBack", t = 16 / 30},
			{s = "Stalker2.ThreeLinerTactical", t = 60 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.ArRattleMedium", t = 2 / 30},
			{s = "Stalker2.ArRattleStrong", t = 25 / 30},
			{s = "Stalker2.ThreeLinerUp", t = 36 / 30},
			{s = "Stalker2.ThreeLinerSlideBack", t = 43 / 30},
			{s = "Stalker2.ThreeLinerWeaponHit", t = 72 / 30},
			{s = "Stalker2.ThreeLinerForward", t = 87 / 30},
			{s = "Stalker2.ThreeLinerSlideDown", t = 94 / 30},
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