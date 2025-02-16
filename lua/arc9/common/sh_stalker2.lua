local conVars = {
    -- {
        -- name = "truenames_enforced",
        -- default = "0",
        -- replicated = true,
        -- min = 0,
        -- max = 1,
    -- },
    -- {
        -- name = "toggleads",
        -- default = "0",
        -- client = true,
        -- userinfo = true
    -- },
    -- {
        -- name = "aimassist_cone",
        -- default = "5",
        -- replicated = true,
    -- },
    -- {
        -- name = "dev_show_affectors",
        -- default = "0",
    -- },
    -- {
        -- name = "fx_inspectblur",
        -- default = "0",
        -- client = true
    -- },
	{
        name = "stalker2_mult_heat",
        default = "1",
    },
	{
        name = "stalker2_mult_dmg",
        default = "1",
    },
	{
        name = "stalker2_mult_recoil",
        default = "1",
    },
	{
        name = "stalker2_mult_spread",
        default = "1",
    },
	{
        name = "stalker2_bool_heat",
        default = "1",
    },
}
ARC9.ConVarData = {}

local prefix = "arc9_"

local torevertlist_cl = {}
local torevertlist_sv = {}

for _, var in pairs(conVars) do
    local convar_name = prefix .. var.name

    if var.client and CLIENT then
        table.insert(torevertlist_cl, convar_name)
        CreateClientConVar(convar_name, var.default, true, var.userinfo)
    else
        local flags = FCVAR_ARCHIVE
        if var.replicated then
            flags = flags + FCVAR_REPLICATED
        end
        if var.userinfo then
            flags = flags + FCVAR_USERINFO
        end
        table.insert(torevertlist_sv, convar_name)
        CreateConVar(convar_name, var.default, flags, var.helptext, var.min, var.max)
    end

    ARC9.ConVarData[convar_name] = var
end

if CLIENT then
	
    timer.Simple(1, function()
    
        local stalker2settings = {
            TabName = "Addon - STALKER 2",
            sv = true,
            { type = "label", text = "Settings for S.T.A.L.K.E.R. 2: Heart of Chornobyl weapons" },
			{ sv = true, type = "button", text = "Reset", desc = "Resets all S.T.A.L.K.E.R. 2 related ConVars to their default values.", func = function(self2)
                RunConsoleCommand("arc9_stalker2_reset")
            end},
			{ sv = true, type = "bool", text = "Enable Durability", desc = "Allows heat to be applied to the weapons upon firing, turn this off if you wish to disable jamming.", convar = "stalker2_bool_heat" }, 	
			
			{ type = "label", text = "Multipliers" },
			{ sv = true, type = "slider", text = "Damage", desc = "Multiplies ranged damage.", convar = "stalker2_mult_dmg", min = 0.1, max = 10, decimals = 2 },
			{ sv = true, type = "slider", text = "Recoil", desc = "Multiplies the general amount of recoil.", convar = "stalker2_mult_recoil", min = 0.1, max = 5, decimals = 2 },
			{ sv = true, type = "slider", text = "Spread", desc = "Multiplies the general amount of spread.", convar = "stalker2_mult_spread", min = 0.1, max = 5, decimals = 2 },
			{ sv = true, type = "slider", text = "Heat", desc = "Multiplies the rate at which heat (durability) is gained.", convar = "stalker2_mult_heat", min = 0.1, max = 10, decimals = 2 },
        }
        
        table.insert(ARC9.SettingsTable, 13, stalker2settings)
    
    end)
end

concommand.Add("arc9_stalker2_reset", function()
	RunConsoleCommand("arc9_stalker2_mult_heat", "1")
    RunConsoleCommand("arc9_stalker2_mult_dmg", "1")
    RunConsoleCommand("arc9_stalker2_mult_recoil", "1")
	RunConsoleCommand("arc9_stalker2_mult_spread", "1")
	RunConsoleCommand("arc9_stalker2_bool_heat", "1")
end)

-- list.Set("ContentCategoryIcons", "nil", "nil.png")