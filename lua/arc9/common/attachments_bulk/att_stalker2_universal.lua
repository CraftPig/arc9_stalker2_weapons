local ATT = {}

--[[ -----------------------------------------------------------------------------------------------------------
--------- Trigger
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Overclocked Trigger"
ATT.CompactName = "OCT"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increases the weapons firerate at the cost of increased durability damage."

-- ATT.Folder = "nil"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_trigger_1"}

ATT.RPMMult = 1.15
ATT.HeatPerShotMult = 3.0

ARC9.LoadAttachment(ATT, "stalker2_universal_trigger_oct")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "RapidFire Trigger"
ATT.CompactName = "RF Trigger"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Increases the weapons firerate at the cost of increased durability damage."

-- ATT.Folder = "nil"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_trigger_1"}

ATT.RPMMult = 1.1
ATT.HeatPerShotMult = 2.0

ARC9.LoadAttachment(ATT, "stalker2_universal_trigger_rf")

--[[ -----------------------------------------------------------------------------------------------------------
--------- Firemode
]] -------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Burst Override Module"
ATT.CompactName = "BOM"
ATT.Icon = Material("entities/attachments/wrench.png", "mips smooth") 
ATT.Description = "Overrides the secondary firemode option to BURST fire."

-- ATT.Folder = "nil"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - S.T.A.L.K.E.R. 2"
ATT.Category = {"stalker2_fireselector_1"}

ATT.Firemodes = { -- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
	{
	    Mode = -1,
    },
	{
	    Mode = 3,
    },
}

ARC9.LoadAttachment(ATT, "stalker2_universal_firemode_burstoverride1")