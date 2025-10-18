-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

SWEP.Category = "ARC9 - S.T.A.L.K.E.R. 2"

-- Damage
SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.25,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.6,
    [HITGROUP_RIGHTARM] = 0.6,
    [HITGROUP_LEFTLEG] = 0.4,
    [HITGROUP_RIGHTLEG] = 0.4,
}

-- Weapon Visual Recoil
SWEP.UseVisualRecoil 						= true
SWEP.PhysicalVisualRecoil 					= false 

SWEP.VisualRecoilMultHipFire 				= 1.5
SWEP.VisualRecoilMultSights 				= 0.5
SWEP.VisualRecoilMultCrouch 				= 1.0

SWEP.VisualRecoilUp 						= 0.05
SWEP.VisualRecoilUpAddSighted 				= -0.05
SWEP.VisualRecoilSide 						= 0.17
SWEP.VisualRecoilSideAddSighted 			= -0.15
SWEP.VisualRecoilRoll 						= 15

SWEP.VisualRecoilPunch 						= 1.75
SWEP.VisualRecoilPunchMultSights 			= 4

SWEP.VisualRecoilDampingConst 				= 140 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude 			= 5
SWEP.VisualRecoilSpringPunchDamping 		= 5 -- ehh another val for "eft" recoil, 6 is default

SWEP.RecoilKick 							= 1.5 -- Camera recoil
SWEP.RecoilKickDamping 						= 35.0 -- Camera recoil damping
SWEP.RecoilKickAffectPitch = nil

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.Sway 						= 0 -- How much the gun sways
SWEP.SwayAddSighted 			= 0.5
SWEP.SwayAddMidAir 				= 1.0 

SWEP.SprintToFireTime 			= 0.1
SWEP.AimDownSightsTime 			= 0.1
SWEP.MagnificationZoomSpeed 	= 1
SWEP.NoFireDuringSighting 		= true

SWEP.TriggerDelay 				= true 
SWEP.TriggerDelayCancellable 	= false
SWEP.TriggerDelayTime 			= 0.01

SWEP.Speed 						= 1
SWEP.SpeedMultSights 			= 1
SWEP.SpeedMultShooting			= 1

SWEP.PushBackForce 				= 1
SWEP.FreeAimRadius 				= 2

-- Melee ----------------------------------------------------------------------------------------------
SWEP.Bash = true

SWEP.BashDamage = 15
SWEP.BashRange = 65
SWEP.BashLungeRange = 0
SWEP.PreBashTime = 0.35
SWEP.PostBashTime = 0.5
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

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

SWEP.BobSprintMult 				= 0.5 -- 
SWEP.BobWalkMult 				= 1 -- same but for all non sprint actions


-- SWEP.DryFireDelay = 0.5


-------------------------------------------------------------------------------------------------------
-- Hooks ----------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.Hook_Deploy = function(self)
	self.MidAir = 0
return end

SWEP.Hook_Think = function(self)
	local owner = self:GetOwner() 

	if self:GetNextPrimaryFire() >= CurTime() then return end
	if !self:CanReload() then return end
	if self:GetInSights() == true then return end
	if self:GetUBGL() == true then return end
	
	if self.CanJumpAnim == false then return end 
	if (owner:KeyPressed(IN_JUMP)) and self.MidAir == 0 then
		self:PlayAnimation("jump_in", 1, true)
		self.MidAir = 1
	end
	if not owner:OnGround() then
		self.MidAir = 1
	end
	if self.MidAir == 1 and owner:OnGround() and self:GetReloading() == false then -- Jump End
		self.MidAir = 0
		self:PlayAnimation("jump_end", 1, false)
	end
return end

SWEP.Hook_PrimaryAttack = function(self)
	local owner = self:GetOwner()
	
	if not GetConVar("arc9_stalker2_bool_heat"):GetBool() then return end
	if self:Clip1() == 1 then return end
	
	self.GunHealth = self.GunHealth - self.GunDamagePerShot 
	self.GunHealth = math.max(0,self.GunHealth)

	local condition = self.GunHealth / self.GunHealthMax
	local minJam = 0.8    
	local maxJam = 70     
	local jamChance = 0
	local jamChance = math.min(((((self.GunHealth / self.GunHealthMax) * 100) - 100) * ((1 - condition) * -1)),maxJam) 
	if self.GunHealth <= 0 then jamChance = maxJam end
	
    local rnd = math.random(1,100)
	if (rnd < jamChance) then
		if self:Clip1() % 2 == 0 and self:Clip1() <= 200 then
			self:SetJammed(true)	
		end
	end
	
	if self:GetJammed() == true then
		self:EmitSound("Stalker2.Jam")
	end
	
	-- owner:PrintMessage( HUD_PRINTCENTER, jamChance)
	-- print("Gun Health: " .. self.GunHealth)
	-- print("Jam Chance: " .. jamChance)
end

SWEP.Hook_BlockHasAnimation = function(self, anim)
	if self:Clip1() == 0 and not self.EmptyTime then
        self.EmptyTime = CurTime() + 1.5
    elseif self:Clip1() > 0 then
        self.EmptyTime = nil
    end
	
	if anim == "dryfire" or anim == "dryfire_sights" then
        if self.EmptyTime and CurTime() < self.EmptyTime then
            return false
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