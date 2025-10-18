AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_gauss")

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"
SWEP.SubCategory = "Sniper Rifles"

SWEP.AdminOnly = false
SWEP.PrintName = "Gauss Gun"
SWEP.TrueName = "Gauss Gun"

SWEP.Slot = 3

SWEP.Class = "Coilgun"
SWEP.Trivia = {
    Caliber = "Batteries",
	Weight = "7kg",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Particles = "Matin",
	Assets = "S.T.A.L.K.E.R. 2: Heart of Chornobyl | GSC Game World", 
}
SWEP.Description = [[Developed in the Zone and incorporating an electromagnetic bullet acceleration system, this sniper rifle is used exclusively within the Zone.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/stalker2/sr_gauss/v_sr_gauss.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_snip_awp.mdl" -- w_eq_fraggrenade_thrown, w_knife_t, w_pist_deagle, w_pist_glock18, w_pist_p228, w_pist_usp, w_pist_usp_silencer, w_rif_ak47, w_rif_aug, w_rif_famas, w_rif_galil, w_rif_m4a1, w_rif_m4a1_silencer, w_rif_sg552, w_shot_xm1014, w_smg_mac10, w_smg_mp5, w_smg_p90, w_smg_tmp, w_smg_ump45, w_snip_awp, w_snip_g3sg1, w_snip_scout, w_snip_sg550
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-3, 2.5, -7), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-1, 5, -12), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -0, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK			 = false
SWEP.TPIKnolefthand	 = false
SWEP.NoTPIKVMPos	 = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType                = "crossbow"
SWEP.HoldTypeSprint          = "crossbow"
SWEP.HoldTypeHolstered       = nil
SWEP.HoldTypeSights       	 = "crossbow"
SWEP.HoldTypeCustomize 		 = "slam"
SWEP.HoldTypeBlindfire		 = "crossbow"
SWEP.HoldTypeNPC 			 = "crossbow"

SWEP.AnimShoot 				 = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload 			 = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload		 = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw 				 = false
SWEP.AnimMelee 				 = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee		 = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax			 = 500 * (GetConVar("arc9_stalker2_mult_dmg"):GetFloat())
SWEP.DamageMin 			 = SWEP.DamageMax / 1.5

SWEP.RangeMin 			 = 100 / 0.0254
SWEP.RangeMax			 = SWEP.RangeMin * 3

SWEP.Num 				 = 1
SWEP.DamageType			 = DMG_SHOCK

SWEP.ImpactForce		 = 10 
SWEP.ArmorPiercing		 = 0.8
SWEP.Penetration		 = 1000/1000/0.0254

SWEP.PhysBulletMuzzleVelocity 	= 5600 / 0.0254
SWEP.RicochetChance 			= 0

SWEP.RPM = 23
SWEP.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = 1,
    },
}

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo 			= "Battery" 

SWEP.ChamberSize 	= 1 
SWEP.ClipSize 		= 10
SWEP.SupplyLimit    = 4

SWEP.AmmoPerShot    = 1 
SWEP.InfiniteAmmo   = false 
SWEP.BottomlessClip = false 

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.RecoilSeed = 5341
SWEP.RecoilPatternDrift = 1 -- Higher values = more extreme recoil patterns.
SWEP.RecoilLookupTable = 
{
    22,
	10,
	-3,
	34,
}

SWEP.Recoil 								= (1) * (GetConVar("arc9_stalker2_mult_recoil"):GetFloat())
SWEP.RecoilMultSights                       = 0.8

SWEP.RecoilRandomUp 						= 0.1
SWEP.RecoilRandomSide 						= 0.33

SWEP.RecoilAutoControl 						= 1.7
SWEP.RecoilAutoControlMultShooting       	= 0.25

SWEP.RecoilDissipationRate 					= 5 
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

SWEP.RecoilKick 							= 14.0 -- Camera recoil
SWEP.RecoilKickDamping 						= 5.0 -- Camera recoil damping

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread 					= 0.0083 * (GetConVar("arc9_stalker2_mult_spread"):GetFloat())

SWEP.SpreadAddRecoil 			= 0.002 -- Applied per unit of recoil.
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

SWEP.AimDownSightsTime 			= 0.75
SWEP.SprintToFireTime 			= 0.37
SWEP.NoFireDuringSighting 		= true

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.02

SWEP.Speed 						= 1
SWEP.SpeedMultSights 			= 0.92
SWEP.SpeedMultShooting			= 1

SWEP.BarrelLength 				= 19 
SWEP.PushBackForce 				= 1
SWEP.FreeAimRadius 				= 2

-- Malfunctions ----------------------------------------------------------------------------------------------
SWEP.Overheat 			= false
-- SWEP.HeatPerShot 		= 12.5 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())
-- SWEP.HeatCapacity 		= 3750
-- SWEP.HeatDissipation 	= 0.5 -- rounds' worth of heat lost per second
-- SWEP.HeatLockout 		= false 
-- SWEP.HeatDelayTime 		= 1 -- Amount of time that passes before heat begins to dissipate.
-- SWEP.HeatFix 			= false

-- if not GetConVar("arc9_stalker2_bool_heat"):GetBool() then
	-- SWEP.Overheat 			= false
-- end 

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
SWEP.ViewModelFOVBase = 70

SWEP.IronSights = {
    Pos = Vector(-2.78, -3, 1.45),
    Ang = Angle(-1.6, 0.0, 1),
    Magnification = 1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, 0, 0),
    Ang = Angle(0, 0, -0),
}

SWEP.ActivePos = Vector(-0.3, -0.7, 1.0) 
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
SWEP.CustomizePos = Vector(18.5, 38, 5.5)
SWEP.CustomizeRotateAnchor = Vector(17, -3, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag 				= true
SWEP.ShouldDropMagEmpty 		= true

SWEP.DropMagazineQCA 			= 4
SWEP.DropMagazineAmount 		= 1 
SWEP.DropMagazineTime 			= 1.5

SWEP.DropMagazinePos 			= Vector(-0, 0, -0) -- offsets
SWEP.DropMagazineAng 			= Angle(0, 0, 0)
SWEP.DropMagazineVelocity 		= Vector(0, -0, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel 			= "models/weapons/arc9/stalker2/sr_gauss/w_sr_gauss_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds 		= {"physics/metal/weapon_impact_soft1.wav",
								"physics/metal/weapon_impact_soft2.wav",
								"physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA 				= 3 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject 				= false
SWEP.NoShellEjectManualAction 	= false -- Don't eject shell while cycling
SWEP.ShellCorrectAng = Angle(0, -90, 0)

SWEP.ShellModel 				= "models/shells/shell_762nato.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA 			= 2 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA 				= 2 -- QC Attachment that controls after shot particle.

SWEP.MuzzleParticle 			= {"gauss_muzzle_glow", "gauss_muzzle", "matin_ga_warp"} -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle 			= "barrel_smoke"

-------------------------- TRACERS
SWEP.TracerNum 					= 1 -- Tracer every X
SWEP.TracerFinalMag 			= 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect 				= "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor 				= Color(200, 200, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize 				= 10

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
SWEP.ShootSound               	= { "Stalker2.GaussFire" }

SWEP.ShootSoundIndoor 			= { "Stalker2.GaussFireIndoors" }  
SWEP.DistantShootSound 			= { "Stalker2.GaussFireOutdoors" }  

SWEP.DryFireSound 				= { "Stalker2.Dry" }  
SWEP.TriggerDownSound 			= { "Stalker2.Trigger" }  
SWEP.TriggerUpSound 			= { "Stalker2.Trigger" }  

SWEP.EnterSightsSound 			= { "Stalker2.5K.AimIn" }  
SWEP.ExitSightsSound 			= { "Stalker2.5K.AimOut" }  
SWEP.MalfunctionSound 			= { "Stalker2.Jam" }  

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "000"

SWEP.AttachmentElements = {
	-- ["stalker2_pm_mag_ext"] = { Bodygroups = { {1, 1} } },
}

SWEP.Attachments = {
	{
        PrintName = "Optic",
		Bone = "jnt_offset",
        Category = {"scp5k_optic", "csgo_optic", "cod2019_optic" },
		CorrectiveAng = Angle(-1.55, 1.75, 0),
		Pos = Vector(5.75, -0, 4.2),
        Ang = Angle(-0, 0, -0),
    },
	{
        PrintName = "Magazine",
		Bone = "jnt_clip_base",
        Category = "",
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
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.InstantSightIdle = false
SWEP.NoInspect = false

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
    ------------------------------------------------ Sights
	["idle_sights"] = {
        Source = {"basepose"},
    },
	--------------------------------------------------- Firemode
    --------------------------------------------------- Fire
	["bash"] = {
        Source = {"melee_1", "melee_2", "melee_3"},
    },
    ["fire"] = {
        Source = {"fire"},
		EventTable = {
			{e = "stalker2_effect_gauss_raiden", t = 0.0},
			{s = "Stalker2.GaussFireWindup", t = 0 / 30},
			{s = "Stalker2.GaussTeethReset", t = 15 / 30},
			{s = "Stalker2.GaussTeethReload", t = 59 / 30},
			{s = "Stalker2.GaussTeethReload", t = 64 / 30},
			{s = "Stalker2.GaussTeethReload", t = 68 / 30},
			{s = "Stalker2.GaussTeethReload", t = 71 / 30},
			{s = "Stalker2.GaussTeethReload", t = 73 / 30},
			{s = "Stalker2.GaussTeethLast", t = 75 / 30},	
        },
    },
	["fire_sights"] = {
        Source = {"fire_ads"},
		EventTable = {
			{e = "stalker2_effect_gauss_raiden", t = 0.0},
			{s = "Stalker2.GaussFireWindup", t = 0 / 30},
			{s = "Stalker2.GaussTeethReset", t = 15 / 30},
			{s = "Stalker2.GaussTeethReload", t = 59 / 30},
			{s = "Stalker2.GaussTeethReload", t = 64 / 30},
			{s = "Stalker2.GaussTeethReload", t = 68 / 30},
			{s = "Stalker2.GaussTeethReload", t = 71 / 30},
			{s = "Stalker2.GaussTeethReload", t = 73 / 30},
			{s = "Stalker2.GaussTeethLast", t = 75 / 30},	
        },
    },
	["dryfire"] = {
        Source = {"dryfire"},
        FireASAP = true,
    },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "Stalker2.GaussMagInIntro", t = 73 / 30},
			{s = "Stalker2.GaussMagInOutro", t = 80 / 30},
			{s = "Stalker2.GaussCock", t = 92 / 30},
			
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
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
        MinProgress = 0.65,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GaussMagOutButton", t = 19 / 30},
			{s = "Stalker2.GaussMagOut", t = 27 / 30},
			{s = "Stalker2.GaussMagInIntro", t = 69 / 30},
			{s = "Stalker2.GaussMagInOutro", t = 78 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
        MinProgress = 0.75,
        FireASAP = false,
		EventTable = {
			{s = "Stalker2.GaussMagOutButton", t = 19 / 30},
			{s = "Stalker2.GaussMagOut", t = 27 / 30},
			{s = "Stalker2.GaussMagInIntro", t = 69 / 30},
			{s = "Stalker2.GaussMagInOutro", t = 78 / 30},
			{s = "Stalker2.GaussCock", t = 93 / 30},
        },
    },
    --------------------------------------------------- Tacticool
	["fix"] = {
        Source = {"malfunction"},
        MinProgress = 0.97,
        FireASAP = true,
		EventTable = {
            {s = "Stalker2.ARC9Cloth", t = 5 / 30},
			{s = "Stalker2.GaussJamOff", t = 15 / 30},
			{s = "Stalker2.GaussJamTeeth", t = 48 / 30},
			{s = "Stalker2.GaussJamTeeth", t = 81 / 30},
			{s = "Stalker2.GaussJamOn", t = 110 / 30},
        },
    },
	-- ["inspect"] = {
        -- Source = {"malfunction"},
        -- MinProgress = 0.97,
        -- FireASAP = true,
		-- EventTable = {
            -- {s = "Stalker2.ARC9Cloth", t = 5 / 30},
			-- {s = "Stalker2.GaussJamOff", t = 15 / 30},
			-- {s = "Stalker2.GaussJamTeeth", t = 45 / 30},
			-- {s = "Stalker2.GaussJamTeeth", t = 77 / 30},
			-- {s = "Stalker2.GaussJamOn", t = 110 / 30},
        -- },
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

SWEP.Hook_BlockHasAnimation = function(self, anim)
	if self:Clip1() == 0 and not self.EmptyTime then
        self.EmptyTime = CurTime() + 1
    elseif self:Clip1() > 0 then
        self.EmptyTime = nil
    end
	
	if anim == "dryfire" then
        if self.EmptyTime and CurTime() < self.EmptyTime then
            return false
        end
    end
return end

SWEP.GunHealth = 3750
SWEP.TotalGunHealth = 3750
SWEP.GunDamagePerShot = 12.5 * (GetConVar("arc9_stalker2_mult_heat"):GetFloat())
SWEP.Hook_PrimaryAttack = function(self)
	
	if not GetConVar("arc9_stalker2_bool_heat"):GetBool() then return end
	if self:Clip1() == 1 then return end
	
	if self.TotalGunHealth == nil then
		self.TotalGunHealth = self.GunHealth
	end
	
	self.GunHealth = self.GunHealth - self.GunDamagePerShot
	
	local MinDurability = self.TotalGunHealth * 0.1
	local JamChance = 0
	local GunDamageTaken = self.TotalGunHealth - self.GunHealth
		
	if GunDamageTaken >= MinDurability  then
		local JamChance = math.min(((((self.GunHealth / self.TotalGunHealth) * 100 ) - 100 ) * -1 ) - 10, 70) 
	end
	
	local rnd = math.random(1,1000)
	if rnd < JamChance then
		self:SetJammed(true)	
	end
	
	if self:GetJammed() == true then
		self:EmitSound("Stalker2.Jam")
	end
	
	-- print("Gun Health: " .. self.GunHealth)
	-- print("Gun Dmage Taken: " .. GunDamageTaken)
	-- print("Total Gun Health: " .. self.TotalGunHealth)
	-- print("Jam Chance: " .. JamChance)
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

    if owner:KeyDown(IN_FORWARD) or owner:KeyDown(IN_MOVERIGHT) or owner:KeyDown(IN_MOVELEFT) or owner:KeyDown(IN_BACK) then
        self.blend_walk = math.Approach(self.blend_walk, 0.35, speed * FrameTime())
    else
        self.blend_walk = math.Approach(self.blend_walk, 0, speed * FrameTime())
    end

    -- if owner:KeyDown(IN_MOVERIGHT) then
        -- self.blend_walk_right = math.Approach(self.blend_walk_right, 1, speed * FrameTime())
    -- else
        -- self.blend_walk_right = math.Approach(self.blend_walk_right, 0, speed * FrameTime())
    -- end

    -- if owner:KeyDown(IN_MOVELEFT) then
        -- self.blend_walk_left = math.Approach(self.blend_walk_left, 1, speed * FrameTime())
    -- else
        -- self.blend_walk_left = math.Approach(self.blend_walk_left, 0, speed * FrameTime())
    -- end

    -- if owner:KeyDown(IN_BACK) then
        -- self.blend_walk_bwd = math.Approach(self.blend_walk_bwd, 1, speed * FrameTime())
    -- else
        -- self.blend_walk_bwd = math.Approach(self.blend_walk_bwd, 0, speed * FrameTime())
    -- end

    vm:SetPoseParameter("blend_walk", self.blend_walk)
    -- vm:SetPoseParameter("blend_walk_right", self.blend_walk_right)
    -- vm:SetPoseParameter("blend_walk_left", self.blend_walk_left)
    -- vm:SetPoseParameter("blend_walk_bwd", self.blend_walk_bwd)
end