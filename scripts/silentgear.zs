//SilentGear.zs
//By CJWilk

//--Imports--
import mods.calculator.basic;

//--Variables--
val WorkStation = <silentgear:crafting_station>;
val Upgrade1 = <silentgear:upgrade_base>;
val Upgrade2 = <silentgear:advanced_upgrade_base>;
val BPaper = <silentgear:blueprint_paper>;

//--Removals--
recipes.remove(WorkStation);
recipes.remove(BPaper);
recipes.remove(Upgrade2);

//--New Recipes--
recipes.addShapeless("Station", WorkStation, [Upgrade1, <minecraft:crafting_table>, <minecraft:chest>]);
mods.calculator.basic.addRecipe(<astralsorcery:itemcraftingcomponent:5>, <ore:dyeBlue>, BPaper);
recipes.addShaped("AdvUpgrade", Upgrade2, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],[<ore:ingotGold>, <ore:gemZanite>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

//--Renaming--
WorkStation.displayName = "Gear Workbench";