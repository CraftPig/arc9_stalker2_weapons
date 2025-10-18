AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_m860")

SWEP.SubCategory = "Shotguns"

SWEP.PrintName = "M860 Cracker"
SWEP.TrueName = "Remington Model 870"

SWEP.Slot = 3

SWEP.Class = "Shotgun"
SWEP.Trivia = {
    Caliber = "12 Gauge",
	Origin = "US",
	Year = "1950",
	Weight = "3.2 kg (7.0 lbs)",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[The owner must have watched too many documentaries on early 20th-century military conflicts, leading to a desire to own a modern reinterpretation of a bolt-action cavalry carbine.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/shot_m860/v_shot_m860.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_shot_xm1014.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4, 4, -8.5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-1, 6, -15), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax			 =  26.7 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 3
SWEP.DamageRand 		 = 0.1

SWEP.RangeMin 			 = 12 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 8
SWEP.CurvedDamageScaling = false

SWEP.Num 				 = 6
SWEP.DamageType			 = DMG_BULLET

SWEP.ImpactForce		 = 8 
SWEP.ArmorPiercing		 = 0.4
SWEP.Penetration		 = 1

SWEP.PhysBulletMuzzleVelocity 	= 430 / 0.0254
SWEP.RicochetChance 			= SWEP.PhysBulletMuzzleVelocity/100000

SWEP.RPM = 120
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.GunHealth 			= 1950
SWEP.GunHealthMax 		= SWEP.GunHealth
SWEP.GunDamagePerShot 	= 14 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "buckshot" 

SWEP.ChamberSize 	= 0
SWEP.ClipSize 		= 6
SWEP.SupplyLimit    = 4

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.5

SWEP.RecoilUp 								= 10
SWEP.RecoilSide 							= 0

SWEP.RecoilRandomUp 						= 0.5
SWEP.RecoilRandomSide 						= 2

SWEP.RecoilAutoControl 						= 15
SWEP.RecoilAutoControlMultShooting       	= 0.35

SWEP.RecoilDissipationRate 					= 10 
SWEP.RecoilResetTime 						= 0.2
SWEP.RecoilFullResetTime 					= 0.5

SWEP.RecoilPerShot 							= 1
SWEP.RecoilMax 								= SWEP.ClipSize

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 				= 0.0614 / 1.25

SWEP.SpreadAddRecoil 		= 0.03 -- Applied per unit of recoil.

SWEP.SpreadAddSights 		= -0.015
SWEP.SpreadAddMove 			= 0.01
SWEP.SpreadAddMidAir 		= 0.02
-- SWEP.SpreadAddHipFire 	= 0.01
SWEP.SpreadAddCrouch 		= 0

-- Weapon Misc ---------------------------------------------------------------------------------------------
SWEP.ShotgunReload 				= true
SWEP.BarrelLength 				= 42 

SWEP.ManualActionChamber 		= 1 -- How many shots we go between needing to cycle again.
SWEP.ManualAction 				= true -- Pump/bolt action. Play the "cycle" animation after firing, when the trigger is released.
SWEP.ManualActionNoLastCycle 	= false -- Do not cycle on the last shot.
SWEP.ManualActionEjectAnyway 	= false -- Eject a shell when firing anyway.

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 70

SWEP.IronSights = {
    Pos = Vector(-3.83, -2.5, 3.7),
    Ang = Angle(-2.5, -0.5, 5.5),
    Magnification = 1.17,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 15, -2),
    Ang = Angle(-20, 0, 70),
}

SWEP.ActivePos = Vector(-0.0, -1, 2.0) 
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
SWEP.CustomizePos = Vector(17, 40, 9)
SWEP.CustomizeRotateAnchor = Vector(15, -3, -4)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= false
SWEP.ShouldDropMagEmpty 		= false

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 0.75

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(20, -50, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/shot_m860/w_shot_m860_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 1 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= true
SWEP.NoShellEjectManualAction 	= true -- Don't eject shell while cycling
-- SWEP.ShellCorrectAng = Angle(0, -0, 90)
-- SWEP.ShellCorrectPos = Vector(1100, -30, 0)

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
SWEP.ShootSound               	= { "Stalker2.M860Fire" } 
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

SWEP.DefaultBodygroups = "0000000000000000000000000"

SWEP.AttachmentElements = {
	["stalker2_m860_magbullets"] = { Bodygroups = { {5, 1} } },
	["stalker2_m860_grip"] = { Bodygroups = { {7, 0} } },
	["stalker2_m860_grip_long"] = { Bodygroups = { {7, 1} } },
	["stalker2_m860_mag"] = { Bodygroups = { {8, 1} } },
	["stalker2_m860_feed"] = { Bodygroups = { {9, 1} } },
	["stalker2_m860_rail"] = { Bodygroups = { {11, 1} } },
}


SWEP.Attachments = {
	{
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"stalker2_spsa_rail"},
		CorrectiveAng = Angle(-4.16, 0.99, 0),
		Pos = Vector(6.1, -0, 4.3),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Tactical",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
		InstalledElements = {"stalker2_m860_rail"},
        Bone = "jnt_offset",
		Pos = Vector(26.5, -0.8, 3.1),
        Ang = Angle(-0, 0, 90),
		Scale = 1,
    },
	{
        PrintName = "Magazine",
        Bone = "jnt_clip_base",
        Category = "stalker2_m860_mag",
        Pos = Vector(0, -0, -0),
    },
	{
        PrintName = "Ammo",
        Bone = "jnt_bullet",
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
        StickerModel = "models/weapons/arc9/stalker2/shot_m860/s_shot_m860_1.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_m860/s_shot_m860_2.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_m860/s_shot_m860_3.mdl",
        Category = "stickers",
    },
	{
		PrintName = "Sticker",
        StickerModel = "models/weapons/arc9/stalker2/shot_m860/s_shot_m860_4.mdl",
        Category = "stickers",
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "jnt_offset",
        Pos = Vector(3.1, -0.88, 1.6),
		Ang = Angle(0, 0, -0),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
	{ 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "jnt_offset",
        Pos = Vector(2, -0.88, 2.8),
		Ang = Angle(-0, 0, -0),
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
        -- Source = {"basepose"},
    -- },
	["idle_sights"] = {
        Source = {"basepose"},
    },
	-- ["exit_sights"] = {
        -- Source = {"basepose"},
		-- MinProgress = 0.55,
        -- FireASAP = true,
    -- },
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"fire"},
    },
	["cycle"] = {
        Source = {"cycle"},
		MinProgress = 0.75,
        FireASAP = true,
		-- EjectAt = 0.2,
		EventTable = {
			{s = "Stalker2.SgRattleWeak", t = 0 / 30},
			{s = "Stalker2.M860SlideBack", t = 0 / 30},
			{s = "Stalker2.M860SlideForward", t = 6 / 30},
        },
    },
	["dryfire"] = {
        Source = {"dryfire"},
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
        Source = {"reload_start"},
		Time = 0.5,
        MinProgress = 0.4,
        FireASAP = false,
		EventTable = {
		    {s = "Stalker2.SgRattleMedium", t = 0 / 30},
        },
    },
	["reload_insert"] = {
        Source = {"reload_insert"},
		Time = 0.85,
        MinProgress = 0.5,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.M860MagInTac", t = 3 / 30},
			{s = "Stalker2.SgRattleWeak", t = 8 / 30},
        },
    },
	["reload_finish"] = {
        Source = {"reload_end"},
		Time = 0.7,
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
			{s = "Stalker2.M860SlideBack", t = 8 / 30},
			{s = "Stalker2.SgRattleWeak", t = 13 / 30},
			{s = "Stalker2.M860MagIn", t = 28 / 30},
			{s = "Stalker2.M860MagInTac", t = 42 / 30},
			{s = "Stalker2.M860SlideForward", t = 55 / 30},
        },
    },
	["reload"] = {
        Source = {"reload_mag"},
		-- Time = 2.8,
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 8 / 30},
			{s = "Stalker2.SgRattleWeak", t = 13 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 55 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 62 / 30},
			{s = "Stalker2.SgRattleMedium", t = 75 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty_mag"},
		-- Time = 2.8,
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.SgRattleMedium", t = 0 / 30},
			{s = "Stalker2.SaigaMagOut", t = 8 / 30},
			{s = "Stalker2.SgRattleWeak", t = 13 / 30},
			{s = "Stalker2.SaigaMagInIntro", t = 55 / 30},
			{s = "Stalker2.SaigaMagInOutro", t = 62 / 30},
			{s = "Stalker2.SgRattleMedium", t = 75 / 30},
			{s = "Stalker2.M860SlideBack", t = 82 / 30},
			{s = "Stalker2.M860SlideForward", t = 88 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.SgRattleMedium", t = 2 / 30},
			{s = "Stalker2.M860SlideEffort", t = 19 / 30},
			{s = "Stalker2.M860SlideEffort", t = 37 / 30},
			{s = "Stalker2.SgRattleMedium", t = 51 / 30},
			{s = "Stalker2.M860Shake", t = 68 / 30},
			{s = "Stalker2.M860BreakBullet", t = 92 / 30},
			{s = "Stalker2.SgRattleStrong", t = 111 / 30},
			{s = "Stalker2.SgRattleMedium", t = 125 / 30},
			{s = "Stalker2.M860SlideBack", t = 130 / 30},
			{s = "Stalker2.M860SlideJamBack", t = 133 / 30},
			{s = "Stalker2.M860SlideForward", t = 137 / 30},
			{s = "Stalker2.SgRattleMedium", t = 155 / 30},
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
 
SWEP.VisualRecoilPunch 						= -5

SWEP.Hook_TranslateAnimation = function (self, anim)
	if self.MidAir == 1 then
	    if anim == "idle" then
            return "jump_loop"
		end
	end
	
	if self:GetJammed() == true then
		if anim == "fire" then
			return "idle"
		elseif anim == "cycle" then
			return "idle"
		end
	end
end	

-- SWEP.Hook_BlockHasAnimation = function(self, anim)
	-- if self:Clip1() == 0 and not self.EmptyTime then
        -- self.EmptyTime = CurTime() + 1.5
    -- elseif self:Clip1() > 0 then
        -- self.EmptyTime = nil
    -- end
	
	-- if anim == "dryfire" or anim == "dryfire_sights" then
        -- if self.EmptyTime and CurTime() < self.EmptyTime then
            -- return false
        -- end
    -- end
	
	-- if self:GetNextPrimaryFire() >= CurTime() then
		-- if anim == "enter_sights" or anim == "idle_sights" then
			-- return false
		-- end
    -- end
-- return end