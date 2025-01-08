AddCSLuaFile()
if CLIENT then
    killicon.Add( "arc9_cod2019_sh_725", "vgui/killicons/cod2019_sh_725.png", Color(251, 85, 25, 255))
end

SWEP.LoadoutImage = "entities/loadout/arc9_cod2019_sh_725.png"

SWEP.Base = "arc9_cod2019_base"

SWEP.CustomCrosshair = true
SWEP.CustomCrosshairMaterial = Material("hud/arc9_cod2019/shotguncrosshair")
SWEP.CustomCrosshairSize = 30

SWEP.Spawnable = true
SWEP.NotForNPCs = false
SWEP.Category = "ARC9 - MW2019"
SWEP.SubCategory = ARC9:GetPhrase("mw19_category_weapon_shotgun") or "Shotguns"
SWEP.ARC9WeaponCategory = 2

SWEP.PrintName = ARC9:GetPhrase("mw19_weapon_725") or "725"

SWEP.Class = ARC9:GetPhrase("mw19_class_weapon_shotgun") or "Shotgun"
SWEP.Trivia = {
    [ ARC9:GetPhrase("mw19_country") ] = ARC9:GetPhrase("mw19_country_japan"),
    [ ARC9:GetPhrase("mw19_manufacturer") ] = ARC9:GetPhrase("mw19_manufacturer_tempus"),
    [ ARC9:GetPhrase("mw19_caliber") ] = ARC9:GetPhrase("mw19_caliber_12gauge"),
    [ ARC9:GetPhrase("mw19_weight") ] = string.format(ARC9:GetPhrase("mw19_weight_val"), 3.91, 3.91 * 2.20),
    [ ARC9:GetPhrase("mw19_weight_projectile") ] = string.format(ARC9:GetPhrase("mw19_weight_projectile_val"), 493),
}

SWEP.Credits = {
    [ ARC9:GetPhrase("mw19_author") ] = "Twilight Sparkle/Firmeteran",
    [ ARC9:GetPhrase("mw19_assets") ] = "Activision/Infinity Ward"
}

SWEP.Description = ARC9:GetPhrase("mw19_weapon_725_desc") or [[Break action shotgun with 2 round capacity. A long back-bored barrel and cylindrical choke keeps spread tight and lethal over extended ranges.]]

SWEP.ViewModel = "models/weapons/arc9/stalker2/pt_pm/v_pt_pm.mdl"
SWEP.WorldModel = "models/weapons/cod2019/w_shot_725.mdl"
SWEP.DefaultBodygroups = "00000000"

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.NoTPIKVMPos = true
SWEP.WorldModelMirror = "models/weapons/cod2019/c_shot_725.mdl"
SWEP.WorldModelOffset = {
    Pos = Vector(-2, 3.5, -5.5),
    Ang = Angle(-5, 0, 180),
    TPIKPos = Vector(-5, 5, -4),
    TPIKAng = Angle(-12.5, -1, 165),
    Scale = 1
}

-------------------------- DAMAGE PROFILE

local path = "weapons/cod2019/725/"

SWEP.Animations = {
    ["fire"] = {
        Source = "shoot1",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["fire_scope"] = {
        Source = "shoot1_scope",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
    },
    ["reload"] = {
        Source = "reload",
		MinProgress = 0.8,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 1.267},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.733},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 2.2},
        },
    },
    ["reload_fast"] = {
        Source = "reload_fast",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {e = "cod2019_725_smoke", t = 0.1},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_open_01.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_reload_fast_start.ogg", t = 0.133},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 0.933},
            {s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 1.367},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.4},
        },
    },
    ["reload_empty"] = {
        Source = "reload",
		MinProgress = 0.8,
		RefillProgress = 0.675,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 1.167},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 1.5},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 2.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 2.333},
        },
    },
    ["reload_empty_fast"] = {
        Source = "reload_fast_empty",
		MinProgress = 0.8,
		RefillProgress = 0.75,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
			{e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_open_01.ogg", t = 0.1},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_shellsin_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 1.533},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_end.ogg", t = 1.55},
        },
    },
	
    ["reload_scope"] = {
        Source = "reload_scope",
		MinProgress = 0.8,
		RefillProgress = 0.65,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_swing.ogg", t = 0.567},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 1.267},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.733},
			{s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 2.2},
        },
    },
    ["reload_fast_scope"] = {
        Source = "reload_fast_scope",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.65,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_open_01.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_reload_fast_start.ogg", t = 0.133},
            {s = path .. "wfoly_plr_sh_charlie725_reload_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_shellin_01.ogg", t = 0.933},
            {s = path .. "wfoly_plr_sh_charlie725_reload_end.ogg", t = 1.367},
			{s = path .. "wfoly_plr_sh_charlie725_reload_close_01.ogg", t = 1.4},
        },
    },
    ["reload_empty_scope"] = {
        Source = "reload_empty_scope",
		MinProgress = 0.8,
		RefillProgress = 0.675,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_open_01.ogg", t = 0.2},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_swing.ogg", t = 0.7},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_01.ogg", t = 1.167},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_shellsin_v2_02.ogg", t = 1.5},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 2.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_end.ogg", t = 2.333},
        },
    },
    ["reload_empty_fast_scope"] = {
        Source = "reload_fast_scope_empty",
		MinProgress = 0.8,
		RefillProgress = 0.725,
		FireASAP = true,
		DropMagAt = 0.6,
		--EjectAt = 0.7,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.65, lhik = 0, rhik = 0 },
            { t = 0.7, lhik = 1, rhik = 1 },
        },
        EventTable = {
		    {e = "cod2019_725_smoke", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_start.ogg", t = 0.0},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_open_01.ogg", t = 0.1},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_swing.ogg", t = 0.533},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_shellsin_01.ogg", t = 1.033},
			{s = path .. "wfoly_plr_sh_charlie725_reload_empty_close_01.ogg", t = 1.533},
            {s = path .. "wfoly_plr_sh_charlie725_reload_empty_fast_end.ogg", t = 1.55},
        },
    },
    ["ready"] = {
        Source = "draw",
		MinProgress = 0.8,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.65, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_raise_first_start.ogg", t = 0.1},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_close_01.ogg", t = 0.25},
			{s = path .. "wfoly_plr_sh_charlie725_raise_first_end.ogg", t = 0.633},
        },
    },
    ["draw"] = {
        Source = "draw_short",
		MinProgress = 0.3,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_raise_up.ogg", t = 0/30},
        },
    },
    ["holster"] = {
        Source = "holster",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_plr_sh_charlie725_drop_down.ogg", t = 0/30},
        },
    },
    ["idle"] = {
        Source = "idle",
    },
    ["idle_sprint"] = {
        Source = "sprint",
    },
    ["exit_sprint"] = {
        Source = "sprint_out",
		Time = 1.25,
    },
    ["enter_sprint"] = {
        Source = "sprint_in",
		IKTimeLine = { { t = 0,  lhik = 1, rhik = 1} },
		Time = 1.25,
    },
    ["super_sprint_idle"] = {
        Source = "super_sprint",
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_in"] = {
        Source = "super_sprint_in",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.35, lhik = 1, rhik = 1 },
            { t = 1, lhik = 0, rhik = 1 },
        },
    },
    ["super_sprint_out"] = {
        Source = "super_sprint_out",
		Time = 1,
        IKTimeLine = {
            { t = 0, lhik = 0, rhik = 1 },
            { t = 0.1, lhik = 0, rhik = 1 },
            { t = 1, lhik = 1, rhik = 1 },
        },
    },
    ["inspect"] = {
        Source = "lookat01",
		MinProgress = 0.9,
		FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_charlie725_inspect_01.ogg", t = 0.033},
			{s = path .. "wfoly_sh_charlie725_inspect_02.ogg", t = 1.5},
			{s = path .. "wfoly_sh_charlie725_inspect_03.ogg", t = 2.5},
			{s = path .. "wfoly_sh_charlie725_inspect_04.ogg", t = 3.667},
			{s = path .. "wfoly_sh_charlie725_inspect_05.ogg", t = 4.367},
        },
    },
    ["inspect_scope"] = {
        Source = "lookat01_scope",
        MinProgress = 0.9,
        FireASAP = true,
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.1, lhik = 0, rhik = 0 },
            { t = 0.8, lhik = 0, rhik = 0 },
            { t = 0.9, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = path .. "wfoly_sh_charlie725_inspect_01.ogg", t = 0/30},
			{s = path .. "wfoly_sh_charlie725_inspect_02.ogg", t = 42/30},
			{s = path .. "wfoly_sh_charlie725_inspect_03.ogg", t = 76/30},
			{s = path .. "wfoly_sh_charlie725_inspect_04.ogg", t = 106/30},
			{s = path .. "wfoly_sh_charlie725_inspect_05.ogg", t = 132/30},
        },
    },
    ["bash"] = {
        Source = {"melee","melee2","melee3"},
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 0, rhik = 0 },
            { t = 0.5, lhik = 0, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
    },
    ["firemode_1"] = {
        Source = "firemode",
        EventTable = {
            {s = path .. "weap_charlie725_fire_first_plr_01.ogg", t = 0/30},
        },
    },
    ["firemode_2"] = {
        Source = "firemode",
        EventTable = {
            {s = path .. "weap_charlie725_fire_first_plr_01.ogg", t = 0/30},
        },
    },
    ["enter_bipod"] = {
        Source = "bipod_in",
    },
    ["exit_bipod"] = {
        Source = "bipod_out",
    },
    ["hybrid_on"] = {
        Source = "hybrid_on",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 0 },
            { t = 0.2, lhik = 1, rhik = 0 },
            { t = 0.5, lhik = 1, rhik = 0 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_on.ogg", t = 5/30},
        },
    },
    ["hybrid_off"] = {
        Source = "hybrid_off",
        IKTimeLine = {
            { t = 0, lhik = 1, rhik = 1 },
            { t = 0.2, lhik = 0, rhik = 1 },
            { t = 0.5, lhik = 0, rhik = 1 },
            { t = 0.85, lhik = 1, rhik = 1 },
        },
        EventTable = {
            {s = "Viewmodel.SwitchSight", t = 0/30},
			{s = "switchsights/wpfoly_hybrid_toggle_off.ogg", t = 5/30},
        },
    },
}

-- SWEP.Hook_Think	= ARC9.COD2019.BlendSights2

-------------------------- ATTACHMENTS

SWEP.Hook_TranslateAnimation = function (wep, anim)
    --local attached = self:GetElements()
	local soh = wep:HasElement("perk_speedreload")
	local scope = wep:HasElement("optic_scope")
	
    if anim == "idle_sprint" and wep:HasElement("perk_super_sprint") then
        return "super_sprint_idle"
    elseif anim == "enter_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_in"
    elseif anim == "exit_sprint" and wep:HasElement("perk_super_sprint") then 
        return "super_sprint_out"
    end
	
	if soh then
		if scope and anim == "inspect" then return "inspect_scope" end
		
		if scope then return anim .. "_fast_scope"
		else return anim .. "_fast" end
	end
	
	if scope then
		return anim .. "_scope"
	end

    --wep.MWHybridSwitching = nil
    if anim == "switchsights" then
        if wep:HasElement("hybrid_scope") then
            wep.MWHybridSwitching = true
            return wep:GetMultiSight() == 1 and "hybrid_on" or "hybrid_off"
        else
            return false
        end
    end
end

SWEP.AttachmentTableOverrides = {
    ["arc9_stat_proscreen_main"] = {
    ModelOffset = Vector(1.5, -0.6, 0.6),
	ModelAngleOffset = Angle(0, 0, 0),
	Scale = 0.8,
    },
    ["go_grip_angled"] = {
    ModelOffset = Vector(0, 0, 0.1),
    },
    -- ["csgo_cod2019_laser_01"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_02"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
    -- ["csgo_cod2019_laser_03"] = {
    -- Sights = {
    -- {
        -- Pos = Vector(2.2, 15, -0.6),
        -- Ang = Angle(0, 0, -45),
        -- ViewModelFOV = 45,
        -- Magnification = 1.25,
        -- IgnoreExtra = false,
		-- KeepBaseIrons = true,
    -- },
    -- },
    -- },
}

SWEP.AttachmentElements = {
    ["base_none"] = {
        Bodygroups = {
            {0,1},
        },
    },
    ["barrel_none"] = {
        Bodygroups = {
            {1,1},
        },
    },
    ["foregrip_none"] = {
        Bodygroups = {
            {2,1},
        },
    },
    ["stock_none"] = {
        Bodygroups = {
            {3,1},
        },
    },
    ["rail_grip"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_grip_none"] = {
        Bodygroups = {
            {4,1},
        },
    },
    ["rail_sight"] = {
        Bodygroups = {
            {5,1},
        },
    },
    ["rail_none"] = {
        Bodygroups = {
            {5,2},
        },
    },
    ["rail_laser"] = {
        Bodygroups = {
            {6,2},
        },
    },
}

SWEP.Hook_ModifyBodygroups = function(wep, data)
    local model = data.model
    if wep:HasElement("rail_none") then model:SetBodygroup(5,2) end
    if wep:HasElement("rail_grip_none") then model:SetBodygroup(4,0) end
end

SWEP.Attachments = {
    { -- 1
        PrintName = ARC9:GetPhrase("mw19_category_muzzle"),
        Category = "cod2019_muzzle_shot_db",
        DefaultIcon = Material("entities/defattachs/muzzle-ar.png", "mips smooth"),
		Bone = "tag_silencer",
        Pos = Vector(0, 0, 0),
    },
    { -- 2
        PrintName = ARC9:GetPhrase("mw19_category_barrel"),
		DefaultIcon = Material("entities/defattachs/barrel-ar.png", "mips smooth"),
        Category = "cod2019_725_barrel",
        Bone = "tag_barrel_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(11, 0, 0.5),
    },
    { -- 3
        PrintName = ARC9:GetPhrase("mw19_category_laser"),
		DefaultIcon = Material("entities/defattachs/laser-ar.png", "mips smooth"),
        Category = "cod2019_tac_rail_alt",
        Bone = "tag_laser_attach",
        Pos = Vector(0, -0.85, -0.1),
    },
    { -- 4
        PrintName = ARC9:GetPhrase("mw19_category_optic"),
		DefaultIcon = Material("entities/defattachs/optic.png", "mips smooth"),
		Bone = "tag_holo",
		Pos = Vector(1.5, 0, -0.1),
        Category = {"cod2019_optic"},
		InstalledElements = {"rail_sight"},
    },
    { -- 5
        PrintName = ARC9:GetPhrase("mw19_category_stock"),
		DefaultIcon = Material("entities/defattachs/stock-ar.png", "mips smooth"),
        Category = {"cod2019_725_stock"},
        Bone = "tag_stock_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(-4, 0, -1),
    },
    { -- 6
        PrintName = ARC9:GetPhrase("mw19_category_underbarrel"),
		DefaultIcon = Material("entities/defattachs/grip.png", "mips smooth"),
        Category = "cod2019_grip",
        Bone = "tag_grip_attach",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 180),
		InstalledElements = {"rail_grip"},
    },
    { -- 7
        PrintName = ARC9:GetPhrase("mw19_category_magazine"),
		DefaultIcon = Material("entities/defattachs/magazine-ar.png", "mips smooth"),
		Bone = "tag_mag_attach",
        Category = {"cod2019_725_mag"},
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(1.5, 0, 0),
		Hidden = true,
    },
    { -- 8
        PrintName = ARC9:GetPhrase("mw19_category_ammo"),
		DefaultIcon = Material("arc9/def_att_icons/ammotype.png", "mips smooth"),
        Bone = "tag_mag_attach",
		Category = {"cod2019_ammo_sg"},
		Pos = Vector(-1.5, 0, 0),
		Icon_Offset = Vector(0, 0, 1),
    },
    { -- 9
        PrintName = ARC9:GetPhrase("mw19_category_guard"),
        Category = "cod2019_725_foregrip",
        Bone = "tag_guard_attach",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(2, 0, 0),
    },
    { -- 10
        PrintName = ARC9:GetPhrase("mw19_category_perk"),
        Category = {"cod2019_perks","cod2019_perks_soh","cod2019_perks_ss"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, -3),
    },
	
	-- Unofficial
    { -- 11
        PrintName = ARC9:GetPhrase("mw19_category_receiver"),
        Category = "cod2019_725_receiver",
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(3.25, 0, 0),
		Hidden = false,
    },
	
	-- Cosmetics
    { -- 12
        PrintName = ARC9:GetPhrase("mw19_category_skins"),
        Bone = "tag_cosmetic",
        Pos = Vector(13, 0, 3),
        Category = "cod2019_skins_725",
		CosmeticOnly = true,
    },
    { -- 13
        PrintName = ARC9:GetPhrase("mw19_category_camouflage"),
        Category = {"universal_camo"},
        Bone = "tag_cosmetic",
        Pos = Vector(11.5, 0, 3),
        CosmeticOnly = true,
    },
    { -- 14
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_a.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(10, 0, 3),
    },
    { -- 15
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_b.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(8.5, 0, 3),
    },
    { -- 16
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_c.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(7, 0, 3),
		ExcludeElements = {"foregrip_none"},
    },
    { -- 17
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_d.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(5.5, 0, 3),
		ExcludeElements = {"foregrip_none"},
    },
    { -- 18
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_e.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(4, 0, 3),
		ExcludeElements = {"foregrip_none"},
    },
    { -- 19
        PrintName = ARC9:GetPhrase("mw19_category_sticker"),
        StickerModel = "models/weapons/cod2019/stickers/shot_725_decal_f.mdl",
        Category = "stickers",
        Bone = "tag_cosmetic",
        Pos = Vector(2.5, 0, 3),
		ExcludeElements = {"foregrip_none"},
    },
    { -- 20
        PrintName = ARC9:GetPhrase("mw19_category_charm"),
        CosmeticOnly = true,
        Category = {"charm"},
        Bone = "tag_cosmetic",
        Pos = Vector(0, 0, 0),
		Icon_Offset = Vector(1, 0, 3),
		Scale = 1.5,
    },
    { -- 21
        PrintName = ARC9:GetPhrase("mw19_category_stats"),
        Category = {"killcounter"},
        Bone = "tag_cosmetic",
        Pos = Vector(-2.5, 0, -1),
		Icon_Offset = Vector(2, 0, 4),
		CosmeticOnly = true,
    },
}

SWEP.GripPoseParam = 4.2
SWEP.GripPoseParam2 = 0.3
SWEP.CodStubbyGripPoseParam = 30
SWEP.CodStubbyTallGripPoseParam = 1
SWEP.CodAngledGripPoseParam = 15

-- Warzone-esque Stats; Add here to change only when using Warzone Stats variable.
if GetConVar("arc9_mw19_stats_warzone"):GetBool() then

-------------------------- DAMAGE PROFILE
SWEP.DamageMax = 52
SWEP.DamageMin = 18

SWEP.DistributeDamage = false

SWEP.Num = 8

SWEP.RangeMin = 2 / ARC9.HUToM
SWEP.RangeMax = 16.8 / ARC9.HUToM

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.035,
    [HITGROUP_CHEST] = 1.01,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 1,
    [HITGROUP_RIGHTLEG] = 1,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 300 / ARC9.HUToM

-------------------------- FIREMODES

SWEP.RPM = 171

-------------------------- HANDLING

SWEP.AimDownSightsTime = 0.375 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.25 -- How long it takes to go from sprinting to being able to fire.

end
