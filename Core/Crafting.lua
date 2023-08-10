local AL = AceLibrary("AceLocale-2.2"):new("AtlasLoot");

local RED = "|cffff0000";
local ORANGE = "|cffFF8400";
local WHITE = "|cffFFFFFF";

function AtlasLoot_CraftingMenu()
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
	--Alchemy
	AtlasLootMenuItem_2_Name:SetText(AL["Alchemy"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_2.lootpage="ALCHEMYMENU";
	AtlasLootMenuItem_2:Show();
	--Blacksmithing
	AtlasLootMenuItem_3_Name:SetText(AL["Blacksmithing"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_3.lootpage="SMITHINGMENU";
	AtlasLootMenuItem_3:Show();
	--Enchanting
	AtlasLootMenuItem_4_Name:SetText(AL["Enchanting"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_4.lootpage="ENCHANTINGMENU";
	AtlasLootMenuItem_4:Show();
	--Engineering
	AtlasLootMenuItem_5_Name:SetText(AL["Engineering"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_5.lootpage="ENGINEERINGMENU";
	AtlasLootMenuItem_5:Show();
	--Herbalism
	AtlasLootMenuItem_6_Name:SetText(AL["Herbalism"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\Trade_Herbalism");
	AtlasLootMenuItem_6.lootpage="Herbalism1";
	AtlasLootMenuItem_6:Show();
	--Leatherworking
	AtlasLootMenuItem_7_Name:SetText(AL["Leatherworking"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_7.lootpage="LEATHERWORKINGMENU";
	AtlasLootMenuItem_7:Show();
	--Mining
	AtlasLootMenuItem_8_Name:SetText(AL["Mining"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Trade_Mining");
	AtlasLootMenuItem_8.lootpage="MININGMENU";
	AtlasLootMenuItem_8:Show();
	--Tailoring
	AtlasLootMenuItem_9_Name:SetText(AL["Tailoring"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_9.lootpage="TAILORINGMENU";
	AtlasLootMenuItem_9:Show();
	--Cooking
	AtlasLootMenuItem_11_Name:SetText(AL["Cooking"]);
	AtlasLootMenuItem_11_Extra:SetText("");
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_11.lootpage="COOKINGMENU";
	AtlasLootMenuItem_11:Show();
	--First Aid
	AtlasLootMenuItem_12_Name:SetText(AL["First Aid"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\Spell_Holy_SealOfSacrifice");
	AtlasLootMenuItem_12.lootpage="FirstAid1";
	AtlasLootMenuItem_12:Show();
	--Survival
	AtlasLootMenuItem_13_Name:SetText(AL["Survival"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\Trade_Survival");
	AtlasLootMenuItem_13.lootpage="SURVIVALMENU";
	AtlasLootMenuItem_13:Show();
	--Poisons
	AtlasLootMenuItem_15_Name:SetText(AL["Poisons"]);
	AtlasLootMenuItem_15_Extra:SetText("|cfffff468"..AL["Rogue"]);
	AtlasLootMenuItem_15_Icon:SetTexture("Interface\\Icons\\Trade_BrewPoison");
	AtlasLootMenuItem_15.lootpage="Poisons1";
	AtlasLootMenuItem_15:Show();
	--Crafted Armor Sets
	AtlasLootMenuItem_17_Name:SetText(AL["Crafted Sets"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Box_01");
	AtlasLootMenuItem_17.lootpage="CRAFTSET";
	AtlasLootMenuItem_17:Show();
	--Crafted Epic Weapons
	AtlasLootMenuItem_18_Name:SetText(AL["Crafted Epic Weapons"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Hammer_Unique_Sulfuras");
	AtlasLootMenuItem_18.lootpage="CraftedWeapons1";
	AtlasLootMenuItem_18:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Crafting"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLootCraftedSetMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Tailoring Header
	AtlasLootMenuItem_1_Name:SetText(RED..AL["Tailoring"]);
	AtlasLootMenuItem_1_Extra:SetText("");
	AtlasLootMenuItem_1_Icon:SetTexture("Interface\\Icons\\INV_Chest_Cloth_21");
	AtlasLootMenuItem_1.isheader = true;
	AtlasLootMenuItem_1:Show();
	--Augerer's Attire
	AtlasLootMenuItem_2_Name:SetText(AL["Augerer's Attire"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Helmet_11");
	AtlasLootMenuItem_2.lootpage="AugerersAttire";
	AtlasLootMenuItem_2:Show();
	--Shadoweave
	AtlasLootMenuItem_3_Name:SetText(AL["Shadoweave"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Helmet_27");
	AtlasLootMenuItem_3.lootpage="ShadoweaveSet";
	AtlasLootMenuItem_3:Show();
	--Diviner's Garments
	AtlasLootMenuItem_4_Name:SetText(AL["Diviner's Garments"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Helmet_33");
	AtlasLootMenuItem_4.lootpage="DivinersGarments";
	AtlasLootMenuItem_4:Show();
	--Pillager's Garb
	AtlasLootMenuItem_5_Name:SetText(AL["Pillager's Garb"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Helmet_28");
	AtlasLootMenuItem_5.lootpage="PillagersGarb";
	AtlasLootMenuItem_5:Show();
	--Bloodvine Garb
	AtlasLootMenuItem_6_Name:SetText(AL["Bloodvine Garb"]);
	AtlasLootMenuItem_6_Extra:SetText("");
	AtlasLootMenuItem_6_Icon:SetTexture("Interface\\Icons\\INV_Pants_Cloth_14");
	AtlasLootMenuItem_6.lootpage="BloodvineG";
	AtlasLootMenuItem_6:Show();
	--Mail Blacksmithing Header
	AtlasLootMenuItem_8_Name:SetText(RED..AL["Blacksmithing"]);
	AtlasLootMenuItem_8_Extra:SetText(WHITE..AL["Mail"]);
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\INV_Chest_Chain_04");
	AtlasLootMenuItem_8.isheader = true;
	AtlasLootMenuItem_8:Show();
	--Bloodsoul Embrace
	AtlasLootMenuItem_9_Name:SetText(AL["Bloodsoul Embrace"]);
	AtlasLootMenuItem_9_Extra:SetText("");
	AtlasLootMenuItem_9_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_15");
	AtlasLootMenuItem_9.lootpage="BloodsoulEmbrace";
	AtlasLootMenuItem_9:Show();
	--Plate Blacksmithing header
	AtlasLootMenuItem_11_Name:SetText(RED..AL["Blacksmithing"]);
	AtlasLootMenuItem_11_Extra:SetText(WHITE..AL["Plate"]);
	AtlasLootMenuItem_11_Icon:SetTexture("Interface\\Icons\\INV_Chest_Plate10");
	AtlasLootMenuItem_11.isheader = true;
	AtlasLootMenuItem_11:Show();
	--Steel Plate
	AtlasLootMenuItem_12_Name:SetText(AL["Steel Plate"]);
	AtlasLootMenuItem_12_Extra:SetText("");
	AtlasLootMenuItem_12_Icon:SetTexture("Interface\\Icons\\INV_Helmet_25");
	AtlasLootMenuItem_12.lootpage="SteelPlate";
	AtlasLootMenuItem_12:Show();
	--Imperial Plate
	AtlasLootMenuItem_13_Name:SetText(AL["Imperial Plate"]);
	AtlasLootMenuItem_13_Extra:SetText("");
	AtlasLootMenuItem_13_Icon:SetTexture("Interface\\Icons\\INV_Belt_01");
	AtlasLootMenuItem_13.lootpage="ImperialPlate";
	AtlasLootMenuItem_13:Show();
	--The Darksoul
	AtlasLootMenuItem_14_Name:SetText(AL["The Darksoul"]);
	AtlasLootMenuItem_14_Extra:SetText("");
	AtlasLootMenuItem_14_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_01");
	AtlasLootMenuItem_14.lootpage="TheDarksoul";
	AtlasLootMenuItem_14:Show();
	AtlasLootMenuItem_14:Show();
		--Leatherworking Leather Header
	AtlasLootMenuItem_16_Name:SetText(RED..AL["Leatherworking"]);
	AtlasLootMenuItem_16_Extra:SetText(WHITE..AL["Leather"]);
	AtlasLootMenuItem_16_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_04");
	AtlasLootMenuItem_16.isheader = true;
	AtlasLootMenuItem_16:Show();
	--Grifter's Armor
	AtlasLootMenuItem_17_Name:SetText(AL["Grifter's Armor"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\INV_Helmet_33");
	AtlasLootMenuItem_17.lootpage="GriftersArmor";
	AtlasLootMenuItem_17:Show();
	--Primalist's Trappings
	AtlasLootMenuItem_18_Name:SetText(AL["Primalist's Trappings"]);
	AtlasLootMenuItem_18_Extra:SetText("");
	AtlasLootMenuItem_18_Icon:SetTexture("Interface\\Icons\\INV_Helmet_04");
	AtlasLootMenuItem_18.lootpage="PrimalistsTrappings";
	AtlasLootMenuItem_18:Show();
	--Volcanic Armor
	AtlasLootMenuItem_19_Name:SetText(AL["Volcanic Armor"]);
	AtlasLootMenuItem_19_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_19_Icon:SetTexture("Interface\\Icons\\INV_Pants_06");
	AtlasLootMenuItem_19.lootpage="VolcanicArmor";
	AtlasLootMenuItem_19:Show();
	--Ironfeather Armor
	AtlasLootMenuItem_20_Name:SetText(AL["Ironfeather Armor"]);
	AtlasLootMenuItem_20_Extra:SetText("");
	AtlasLootMenuItem_20_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_06");
	AtlasLootMenuItem_20.lootpage="IronfeatherArmor";
	AtlasLootMenuItem_20:Show();
	--Stormshroud Armor
	AtlasLootMenuItem_21_Name:SetText(AL["Stormshroud Armor"]);
	AtlasLootMenuItem_21_Extra:SetText("");
	AtlasLootMenuItem_21_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_08");
	AtlasLootMenuItem_21.lootpage="StormshroudArmor";
	AtlasLootMenuItem_21:Show();
	--Devilsaur Armor
	AtlasLootMenuItem_22_Name:SetText(AL["Devilsaur Armor"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Pants_Wolf");
	AtlasLootMenuItem_22.lootpage="DevilsaurArmor";
	AtlasLootMenuItem_22:Show();
	--Blood Tiger Harness
	AtlasLootMenuItem_23_Name:SetText(AL["Blood Tiger Harness"]);
	AtlasLootMenuItem_23_Extra:SetText("");
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Shoulder_23");
	AtlasLootMenuItem_23.lootpage="BloodTigerH";
	AtlasLootMenuItem_23:Show();
	--Primal Batskin
	AtlasLootMenuItem_24_Name:SetText(AL["Primal Batskin"]);
	AtlasLootMenuItem_24_Extra:SetText("");
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Chest_Leather_03");
	AtlasLootMenuItem_24.lootpage="PrimalBatskin";
	AtlasLootMenuItem_24:Show();
	--Leatherworking Mail Header
	AtlasLootMenuItem_25_Name:SetText(RED..AL["Leatherworking"]);
	AtlasLootMenuItem_25_Extra:SetText(WHITE..AL["Mail"]);
	AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\INV_Chest_Chain_12");
	AtlasLootMenuItem_25.isheader = true;
	AtlasLootMenuItem_25:Show();
	--Red Dragon Mail
	AtlasLootMenuItem_26_Name:SetText(AL["Red Dragon Mail"]);
	AtlasLootMenuItem_26_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_26_Icon:SetTexture("Interface\\Icons\\inv_chest_chain_06");
	AtlasLootMenuItem_26.lootpage="RedDragonM";
	AtlasLootMenuItem_26:Show();
	--Green Dragon Mail
	AtlasLootMenuItem_27_Name:SetText(AL["Green Dragon Mail"]);
	AtlasLootMenuItem_27_Extra:SetText(ORANGE..AL["Nature Resistance Gear"]);
	AtlasLootMenuItem_27_Icon:SetTexture("Interface\\Icons\\INV_Pants_05");
	AtlasLootMenuItem_27.lootpage="GreenDragonM";
	AtlasLootMenuItem_27:Show();
	--Blue Dragon Mail
	AtlasLootMenuItem_28_Name:SetText(AL["Blue Dragon Mail"]);
	AtlasLootMenuItem_28_Extra:SetText(ORANGE..AL["Arcane Resistance Gear"]);
	AtlasLootMenuItem_28_Icon:SetTexture("Interface\\Icons\\INV_Chest_Chain_04");
	AtlasLootMenuItem_28.lootpage="BlueDragonM";
	AtlasLootMenuItem_28:Show();
	--Black Dragon Mail
	AtlasLootMenuItem_29_Name:SetText(AL["Black Dragon Mail"]);
	AtlasLootMenuItem_29_Extra:SetText(ORANGE..AL["Fire Resistance Gear"]);
	AtlasLootMenuItem_29_Icon:SetTexture("Interface\\Icons\\INV_Pants_03");
	AtlasLootMenuItem_29.lootpage="BlackDragonM";
	AtlasLootMenuItem_29:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Crafted Sets"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_AlchemyMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Alchemy"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_2.lootpage = "AlchemyApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Alchemy"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_3.lootpage = "AlchemyJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Alchemy"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_4.lootpage="AlchemyExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Alchemy"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Alchemy");
	AtlasLootMenuItem_5.lootpage="AlchemyArtisan1";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Alchemy"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_SmithingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Blacksmithing"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_2.lootpage = "SmithingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Blacksmithing"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_3.lootpage = "SmithingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Blacksmithing"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_4.lootpage="SmithingExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Blacksmithing"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_BlackSmithing");
	AtlasLootMenuItem_5.lootpage="SmithingArtisan1";
	AtlasLootMenuItem_5:Show();
	--Armorsmith
	AtlasLootMenuItem_7_Name:SetText(AL["Blacksmithing"]..": "..AL["Armorsmith"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Chest_Plate04");
	AtlasLootMenuItem_7.lootpage="Armorsmith1";
	AtlasLootMenuItem_7:Show();
	--Weaponsmith
	AtlasLootMenuItem_22_Name:SetText(AL["Blacksmithing"]..": "..AL["Weaponsmith"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\INV_Sword_25");
	AtlasLootMenuItem_22.lootpage="Weaponsmith1";
	AtlasLootMenuItem_22:Show();
	--Master Axesmith
	AtlasLootMenuItem_23_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Axesmith"]);
	AtlasLootMenuItem_23_Extra:SetText("");
	AtlasLootMenuItem_23_Icon:SetTexture("Interface\\Icons\\INV_Axe_05");
	AtlasLootMenuItem_23.lootpage="Axesmith1";
	AtlasLootMenuItem_23:Show();
	--Master Hammersmith
	AtlasLootMenuItem_24_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Hammersmith"]);
	AtlasLootMenuItem_24_Extra:SetText("");
	AtlasLootMenuItem_24_Icon:SetTexture("Interface\\Icons\\INV_Hammer_23");
	AtlasLootMenuItem_24.lootpage="Hammersmith1";
	AtlasLootMenuItem_24:Show();
	--Master Swordsmith
	AtlasLootMenuItem_25_Name:SetText(AL["Blacksmithing"]..": "..AL["Master Swordsmith"]);
	AtlasLootMenuItem_25_Extra:SetText("");
	AtlasLootMenuItem_25_Icon:SetTexture("Interface\\Icons\\INV_Sword_41");
	AtlasLootMenuItem_25.lootpage="Swordsmith1";
	AtlasLootMenuItem_25:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Blacksmithing"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EnchantingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Enchanting"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_2.lootpage = "EnchantingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Enchanting"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_4.lootpage="EnchantingExpert1";
	AtlasLootMenuItem_4:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Enchanting"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_3.lootpage = "EnchantingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Enchanting"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engraving");
	AtlasLootMenuItem_5.lootpage="EnchantingArtisan1";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Enchanting"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_EngineeringMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Engineering"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_2.lootpage = "EngineeringApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Engineering"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_3.lootpage = "EngineeringJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Engineering"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_4.lootpage="EngineeringExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Engineering"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_5.lootpage="EngineeringArtisan1";
	AtlasLootMenuItem_5:Show();
	--Gnomish Engineering
	AtlasLootMenuItem_7_Name:SetText(AL["Engineering"]..": "..AL["Gnomish Engineering"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_7.lootpage="Gnomish1";
	AtlasLootMenuItem_7:Show();
	--Goblin Engineering
	AtlasLootMenuItem_22_Name:SetText(AL["Engineering"]..": "..AL["Goblin Engineering"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Trade_Engineering");
	AtlasLootMenuItem_22.lootpage="Goblin1";
	AtlasLootMenuItem_22:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Engineering"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_LeatherworkingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Leatherworking"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_2.lootpage = "LeatherApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Leatherworking"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_3.lootpage = "LeatherJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Leatherworking"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_4.lootpage="LeatherExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Leatherworking"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_ArmorKit_17");
	AtlasLootMenuItem_5.lootpage="LeatherArtisan1";
	AtlasLootMenuItem_5:Show();
	--Dragonscale Leatherworking
	AtlasLootMenuItem_7_Name:SetText(AL["Leatherworking"]..": "..AL["Dragonscale Leatherworking"]);
	AtlasLootMenuItem_7_Extra:SetText("");
	AtlasLootMenuItem_7_Icon:SetTexture("Interface\\Icons\\INV_Misc_MonsterScales_03");
	AtlasLootMenuItem_7.lootpage="Dragonscale1";
	AtlasLootMenuItem_7:Show();
	--Tribal Leatherworking
	AtlasLootMenuItem_8_Name:SetText(AL["Leatherworking"]..": "..AL["Tribal Leatherworking"]);
	AtlasLootMenuItem_8_Extra:SetText("");
	AtlasLootMenuItem_8_Icon:SetTexture("Interface\\Icons\\Spell_Nature_NullWard");
	AtlasLootMenuItem_8.lootpage="Tribal1";
	AtlasLootMenuItem_8:Show();
	--Elemental Leatherworking
	AtlasLootMenuItem_22_Name:SetText(AL["Leatherworking"]..": "..AL["Elemental Leatherworking"]);
	AtlasLootMenuItem_22_Extra:SetText("");
	AtlasLootMenuItem_22_Icon:SetTexture("Interface\\Icons\\Spell_Fire_Volcano");
	AtlasLootMenuItem_22.lootpage="Elemental1";
	AtlasLootMenuItem_22:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Leatherworking"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_TailoringMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Tailoring"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_2.lootpage = "TailoringApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Tailoring"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_3.lootpage = "TailoringJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Tailoring"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_4.lootpage="TailoringExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Tailoring"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\Trade_Tailoring");
	AtlasLootMenuItem_5.lootpage="TailoringArtisan1";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Tailoring"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_CookingMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Cooking"]..": "..AL["Apprentice"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_2.lootpage = "CookingApprentice1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Cooking"]..": "..AL["Journeyman"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_3.lootpage = "CookingJourneyman1";
	AtlasLootMenuItem_3:Show();
	--Expert
	AtlasLootMenuItem_4_Name:SetText(AL["Cooking"]..": "..AL["Expert"]);
	AtlasLootMenuItem_4_Extra:SetText("");
	AtlasLootMenuItem_4_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_4.lootpage="CookingExpert1";
	AtlasLootMenuItem_4:Show();
	--Artisan
	AtlasLootMenuItem_5_Name:SetText(AL["Cooking"]..": "..AL["Artisan"]);
	AtlasLootMenuItem_5_Extra:SetText("");
	AtlasLootMenuItem_5_Icon:SetTexture("Interface\\Icons\\INV_Misc_Food_15");
	AtlasLootMenuItem_5.lootpage="CookingArtisan1";
	AtlasLootMenuItem_5:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Cooking"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_MiningMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Mining
	AtlasLootMenuItem_2_Name:SetText(AL["Mining"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Mining");
	AtlasLootMenuItem_2.lootpage = "Mining1";
	AtlasLootMenuItem_2:Show();
	--Smelting
	AtlasLootMenuItem_17_Name:SetText(AL["Smelting"]);
	AtlasLootMenuItem_17_Extra:SetText("");
	AtlasLootMenuItem_17_Icon:SetTexture("Interface\\Icons\\Spell_Fire_FlameBlades");
	AtlasLootMenuItem_17.lootpage = "Smelting1";
	AtlasLootMenuItem_17:Show();
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i.."_Extra"):Show();
	end
	AtlasLoot_BossName:SetText("|cffFFFFFF"..AL["Mining"]);
	AtlasLoot_SetItemInfoFrame(AtlasLoot_AnchorFrame);
end

function AtlasLoot_SurvivalMenu()
	for i = 1, 30, 1 do
		getglobal("AtlasLootItem_"..i):Hide();
	end
	for i = 1, 30, 1 do
		getglobal("AtlasLootMenuItem_"..i):Hide();
		getglobal("AtlasLootMenuItem_"..i).isheader = false;
	end
	getglobal("AtlasLootItemsFrame_BACK"):Show();
	getglobal("AtlasLootItemsFrame_BACK").lootpage = "CRAFTINGMENU";
	getglobal("AtlasLootItemsFrame_NEXT"):Hide();
	getglobal("AtlasLootItemsFrame_PREV"):Hide();
	getglobal("AtlasLootServerQueryButton"):Hide();
	--Apprentice
	AtlasLootMenuItem_2_Name:SetText(AL["Survival"]);
	AtlasLootMenuItem_2_Extra:SetText("");
	AtlasLootMenuItem_2_Icon:SetTexture("Interface\\Icons\\Trade_Survival");
	AtlasLootMenuItem_2.lootpage = "Survival1";
	AtlasLootMenuItem_2:Show();
	--Journeyman
	AtlasLootMenuItem_3_Name:SetText(AL["Garderning"]);
	AtlasLootMenuItem_3_Extra:SetText("");
	AtlasLootMenuItem_3_Icon:SetTexture("Interface\\Icons\\trade_herbalism");
	AtlasLootMenuItem_3.lootpage = "Survival2";
	AtlasLootMenuItem_3:Show();
end