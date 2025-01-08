local ATT = {}

--[[ -----------------------------------------------------------------------------------------------------------
--------- TOZ
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Short Barrel"
ATT.CompactName = "Short Barrel"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "nil"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_toz_barrel"}

ATT.ActivateElements = {"stalker2_toz_barrel_short"}

ATT.ReloadTimeMult = 0.95
ATT.SwayAddSighted = -0.2
ATT.AimDownSightsTime = -0.25
ATT.SprintToFireTimeMult = 0.6
ATT.SpreadMult = 1.22
ATT.RecoilMult = 1.45

ARC9.LoadAttachment(ATT, "stalker2_toz_barrel_short")
--[[ -----------------------------------------------------------------------------------------------------------
--------- AK74
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Coupled AKM-74 Magazines"
ATT.CompactName = "Coupled Mags"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Coupled magazines for reduced reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_ak74_mag"}

ATT.Model = "models/weapons/arc9/stalker2/ar_ak74/att_ak74_twinmag.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.0, -0, -0)
ATT.ModelAngleOffset = Angle(-0, 90, 0)
ATT.ActivateElements = {"stalker2_ak74_mag1_blank", "stalker2_ak74_mag2_blank"}

ATT.ShouldDropMag 				= false
ATT.ShouldDropMagEmpty 		= false

ATT.Hook_EndReload = function(self)
	if self.Aux == 0 then
		self.Aux = 1
	else
		self.Aux = 0
	end
return end

ATT.Hook_TranslateAnimation = function (self, anim)
	if self.Aux == 1 then
		return anim .. "_aux"
	elseif self.Aux == 0 then
		return anim .. "_paired"
	end
end

ARC9.LoadAttachment(ATT, "stalker2_ak74_mag_twinmag")
--------------------------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity AKM-74 Magazine"
ATT.CompactName = "Extended Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_ak74_mag"}

ATT.ActivateElements = {"stalker2_ak74_mag1_big", "stalker2_ak74_mag2_big"}

-- ATT.ReloadTimeMult = 0.95
-- ATT.SwayAddSighted = -0.2
-- ATT.AimDownSightsTime = -0.25
-- ATT.SprintToFireTimeMult = 0.6
-- ATT.SpreadMult = 1.22
-- ATT.RecoilMult = 1.15
ATT.ClipSizeMult = 1.5

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "stalker2_ak74_mag_ext")

--[[ -----------------------------------------------------------------------------------------------------------
--------- GROZA
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity Grom S-14 Magazine"
ATT.CompactName = "Extended Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_groza_mag"}

ATT.ActivateElements = {"stalker2_groza_mag_big"}

-- ATT.ReloadTimeMult = 0.95
-- ATT.SwayAddSighted = -0.2
-- ATT.AimDownSightsTime = -0.25
-- ATT.SprintToFireTimeMult = 0.6
-- ATT.SpreadMult = 1.22
-- ATT.RecoilMult = 1.15
ATT.ClipSizeMult = 1.5

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "stalker2_groza_mag_ext")
--------------------------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Grom S-14 Drum Magazine"
ATT.CompactName = "Drum Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_groza_mag"}

ATT.ActivateElements = {"stalker2_groza_mag_drum"}

ATT.ClipSizeMult = 2.25

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_drum"
end

ARC9.LoadAttachment(ATT, "stalker2_groza_mag_drum")
--------------------------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity AR416 Magazine"
ATT.CompactName = "Drum Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_m416_mag"}

ATT.ActivateElements = {"stalker2_m416_mag_drum"}

-- ATT.ReloadTimeMult = 0.95
-- ATT.SwayAddSighted = -0.2
-- ATT.AimDownSightsTime = -0.25
-- ATT.SprintToFireTimeMult = 0.6
-- ATT.SpreadMult = 1.22
-- ATT.RecoilMult = 1.15
ATT.ClipSizeMult = 1.68

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "stalker2_m416_mag_drum")

--[[ -----------------------------------------------------------------------------------------------------------
--------- TAR21
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity Fora-221"
ATT.CompactName = "Extended Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_tar21_mag"}

ATT.ActivateElements = {"stalker2_tar21_mag_big"}

ATT.ClipSizeMult = 1.35

ARC9.LoadAttachment(ATT, "stalker2_tar21_mag_ext")

--[[ -----------------------------------------------------------------------------------------------------------
--------- PM
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity PTM Magazine"
ATT.CompactName = "Extended Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_pm_mag"}

ATT.ActivateElements = {"stalker2_pm_mag_ext"}

ATT.ClipSizeMult = 1.5

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "stalker2_pm_mag_ext")


--[[ -----------------------------------------------------------------------------------------------------------
--------- ASVAL
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "High-Capacity AS Lavina Magazine"
ATT.CompactName = "Extended Mag"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increased magazine capacity at the cost of longer reload time."

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_asval_mag"}

ATT.ActivateElements = {"stalker2_asval_mag_ext_1", "stalker2_asval_mag_ext_2"}

ATT.ClipSizeMult = 1.5

ATT.Hook_TranslateAnimation = function (self, anim)
	return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "stalker2_asval_mag_ext")