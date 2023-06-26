local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";

function AtlasLootPvPMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Hide();
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	-- Alterac Valley Rewards
	AtlasLootMenuItem_2_Name:SetText(AL["Alterac Valley"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_2.lootpage="AVRepMenu";
	AtlasLootMenuItem_2:Show();
	-- Arathi Basin Rewards
	AtlasLootMenuItem_3_Name:SetText(AL["Arathi Basin"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_3.lootpage="ABRepMenu";
	AtlasLootMenuItem_3:Show();
	--PvP Mounts
	AtlasLootMenuItem_6_Name:SetText(AL["PvP Mounts"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_Mount_RidingHorse");
	AtlasLootMenuItem_6.lootpage="PvPMountsPvP";
	AtlasLootMenuItem_6:Show();
	--PvP
	AtlasLootMenuItem_8_Name:SetText(AL["PvP Armor Sets"]);
	AtlasLootMenuItem_8_Extra:SetText("|cffFF8400"..AL["Level 60"]);
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Helmet_05");
	AtlasLootMenuItem_8.lootpage="PVPSET";
	AtlasLootMenuItem_8:Show();
	--PvP Accessories
	AtlasLootMenuItem_9_Name:SetText(AL["PvP Accessories"]);
	AtlasLootMenuItem_9_Extra:SetText("|cffFF8400"..AL["Level 60"]);
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Talisman_09");
	AtlasLootMenuItem_9.lootpage="PvP60Accessories1";
	AtlasLootMenuItem_9:Show();
	-- Warsong Gulch Rewards
	AtlasLootMenuItem_17_Name:SetText(AL["Warsong Gulch"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_17.lootpage="WSGRepMenu";
	AtlasLootMenuItem_17:Show();
	-- Blood Ring Rewards
	AtlasLootMenuItem_18_Name:SetText(AL["Blood Ring"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_18.lootpage="BRRepMenu";
	AtlasLootMenuItem_18:Show();
	--Weapons
	AtlasLootMenuItem_23_Name:SetText(AL["Rank 14 Weapons"]);
	AtlasLootMenuItem_23_Extra:SetText("|cffFF8400"..AL["Level 60"]);
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Sword_11");
	AtlasLootMenuItem_23.lootpage="PVPWeapons1";
	AtlasLootMenuItem_23:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Rewards"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootBRRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly
	AtlasLootMenuItem_2_Name:SetText("Friendly Reputation Rewards");
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_2.lootpage="BRRepFriendly";
	AtlasLootMenuItem_2:Show();
	--Honored
	AtlasLootMenuItem_3_Name:SetText("Honored Reputation Rewards");
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_3.lootpage="BRRepHonored";
	AtlasLootMenuItem_3:Show();
	--Revered
	AtlasLootMenuItem_4_Name:SetText("Revered Reputation Rewards");
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_4.lootpage="BRRepRevered";
	AtlasLootMenuItem_4:Show();
	--Exalted
	AtlasLootMenuItem_5_Name:SetText("Exalted Reputation Rewards");
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\inv_jewelry_ring_04");
	AtlasLootMenuItem_5.lootpage="BRRepExalted";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Blood Ring"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootWSGRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	
	--Friendly Header
	AtlasLootMenuItem_2_Name:SetText(RED..AL["Friendly"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_2.isheader = true;
	AtlasLootMenuItem_2:Show();
	--Friendly
	AtlasLootMenuItem_4_Name:SetText("10-60");
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_4.lootpage="WSGRepFriendly";
	AtlasLootMenuItem_4:Show();
	--Honored Header
	AtlasLootMenuItem_8_Name:SetText(RED..AL["Honored"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_8.isheader = true;
	AtlasLootMenuItem_8:Show();
	--Honored 10-19
	AtlasLootMenuItem_10_Name:SetText("10-19");
	AtlasLootMenuItem_10_Extra:SetText("");
	AtlasLootMenuItem_10_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_10.lootpage="WSGRepHonored1019";
	AtlasLootMenuItem_10:Show();
	--Honored 20-29
	AtlasLootMenuItem_11_Name:SetText("20-29");
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_11.lootpage="WSGRepHonored2029";
	AtlasLootMenuItem_11:Show();
	--Honored 30-39
	AtlasLootMenuItem_12_Name:SetText("30-39");
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_12.lootpage="WSGRepHonored3039";
	AtlasLootMenuItem_12:Show();
	--Honored 40-49
	AtlasLootMenuItem_13_Name:SetText("40-49");
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_13.lootpage="WSGRepHonored4049";
	AtlasLootMenuItem_13:Show();
	--Honored 50-59
	AtlasLootMenuItem_14_Name:SetText("50-59");
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_14.lootpage="WSGRepHonored5059";
	AtlasLootMenuItem_14:Show();
	--Exalted Header
	AtlasLootMenuItem_17_Name:SetText(RED..AL["Exalted"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_17.isheader = true;
	AtlasLootMenuItem_17:Show();
	--Exalted 40-49
	AtlasLootMenuItem_19_Name:SetText("40-49");
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_19.lootpage="WSGRepExalted4049";
	AtlasLootMenuItem_19:Show();
	--Exalted 50-59
	AtlasLootMenuItem_20_Name:SetText("50-59");
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_20.lootpage="WSGRepExalted5059";
	AtlasLootMenuItem_20:Show();
	--Exalted 60-60
	AtlasLootMenuItem_21_Name:SetText("60");
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_21.lootpage="WSGRepExalted60";
	AtlasLootMenuItem_21:Show();
	--Revered Header
	AtlasLootMenuItem_23_Name:SetText(RED..AL["Revered"]);
	AtlasLootMenuItem_23_Extra:SetText("");
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_23.isheader = true;
	AtlasLootMenuItem_23:Show();
	--Revered 10-19
	AtlasLootMenuItem_25_Name:SetText("10-19");
	AtlasLootMenuItem_25_Extra:SetText("");
	AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_25.lootpage="WSGRepRevered1019";
	AtlasLootMenuItem_25:Show();
	--Revered 20-29
	AtlasLootMenuItem_26_Name:SetText("20-29");
	AtlasLootMenuItem_26_Extra:SetText("");
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_26.lootpage="WSGRepRevered2029";
	AtlasLootMenuItem_26:Show();
	--Revered 30-39
	AtlasLootMenuItem_27_Name:SetText("30-39");
	AtlasLootMenuItem_27_Extra:SetText("");
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_27.lootpage="WSGRepRevered3039";
	AtlasLootMenuItem_27:Show();
	--Revered 40-49
	AtlasLootMenuItem_28_Name:SetText("40-49");
	AtlasLootMenuItem_28_Extra:SetText("");
	AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_28.lootpage="WSGRepRevered4049";
	AtlasLootMenuItem_28:Show();
	--Revered 50-59
	AtlasLootMenuItem_29_Name:SetText("50-59");
	AtlasLootMenuItem_29_Extra:SetText("");
	AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_Misc_Rune_07");
	AtlasLootMenuItem_29.lootpage="WSGRepRevered5059";
	AtlasLootMenuItem_29:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Warsong Gulch"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootABRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly
	AtlasLootMenuItem_2_Name:SetText(AL["Friendly Reputation Rewards"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_2.lootpage="ABRepFriendly5059";
	AtlasLootMenuItem_2:Show();
	--Honored
	AtlasLootMenuItem_3_Name:SetText(AL["Honored Reputation Rewards"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_3.lootpage="ABRepHonored5059";
	AtlasLootMenuItem_3:Show();
	--Revered
	AtlasLootMenuItem_4_Name:SetText(AL["Revered Reputation Rewards"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_4.lootpage="ABRepRevered5059";
	AtlasLootMenuItem_4:Show();
	--Exalted
	AtlasLootMenuItem_5_Name:SetText(AL["Exalted Reputation Rewards"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Amulet_07");
	AtlasLootMenuItem_5.lootpage="ABRepExalted";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Arathi Basin"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootAVRepMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Friendly
	AtlasLootMenuItem_2_Name:SetText(AL["Friendly Reputation Rewards"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_2.lootpage="AVRepFriendly";
	AtlasLootMenuItem_2:Show();
	--Honored
	AtlasLootMenuItem_3_Name:SetText(AL["Honored Reputation Rewards"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_3.lootpage="AVRepHonored";
	AtlasLootMenuItem_3:Show();
	--Revered
	AtlasLootMenuItem_4_Name:SetText(AL["Revered Reputation Rewards"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_4.lootpage="AVRepRevered";
	AtlasLootMenuItem_4:Show();
	--Exalted
	AtlasLootMenuItem_5_Name:SetText(AL["Exalted Reputation Rewards"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Jewelry_Necklace_21");
	AtlasLootMenuItem_5.lootpage="AVRepExalted";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Alterac Valley"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootPVPSetMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "PVPMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Priest
	AtlasLootMenuItem_3_Name:SetText("|cffffffff"..AL["Priest"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Spell_Holy_PowerWordShield");
	AtlasLootMenuItem_3.lootpage="PVPPriest";
	AtlasLootMenuItem_3:Show();
	--Mage
	AtlasLootMenuItem_4_Name:SetText("|cff68ccef"..AL["Mage"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Spell_Frost_IceStorm");
	AtlasLootMenuItem_4.lootpage="PVPMage";
	AtlasLootMenuItem_4:Show();
	--Warlock
	AtlasLootMenuItem_5_Name:SetText("|cff9382c9"..AL["Warlock"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Spell_Shadow_CurseOfTounges");
	AtlasLootMenuItem_5.lootpage="PVPWarlock";
	AtlasLootMenuItem_5:Show();
	--Rogue
	AtlasLootMenuItem_6_Name:SetText("|cfffff468"..AL["Rogue"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Ability_BackStab");
	AtlasLootMenuItem_6.lootpage="PVPRogue";
	AtlasLootMenuItem_6:Show();
	--Druid
	AtlasLootMenuItem_7_Name:SetText("|cffff7c0a"..AL["Druid"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Spell_Nature_Regeneration");
	AtlasLootMenuItem_7.lootpage="PVPDruid";
	AtlasLootMenuItem_7:Show();
	--Hunter
	AtlasLootMenuItem_18_Name:SetText("|cffaad372"..AL["Hunter"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\Ability_Hunter_RunningShot");
	AtlasLootMenuItem_18.lootpage="PVPHunter";
	AtlasLootMenuItem_18:Show();
	--Shaman
	AtlasLootMenuItem_19_Name:SetText("|cff2773ff"..AL["Shaman"]);
	AtlasLootMenuItem_19_Extra:SetText("");
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\Spell_FireResistanceTotem_01");
	AtlasLootMenuItem_19.lootpage="PVPShaman";
	AtlasLootMenuItem_19:Show();
	--Paladin
	AtlasLootMenuItem_20_Name:SetText("|cfff48cba"..AL["Paladin"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfMight");
	AtlasLootMenuItem_20.lootpage="PVPPaladin";
	AtlasLootMenuItem_20:Show();
	--Warrior
	AtlasLootMenuItem_21_Name:SetText("|cffc69b6d"..AL["Warrior"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Shield_05");
	AtlasLootMenuItem_21.lootpage="PVPWarrior";
	AtlasLootMenuItem_21:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["PvP Armor Sets"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end
