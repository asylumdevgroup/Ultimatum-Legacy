#Age2.zs
#By MCAdventureCity, Kaperios, CJWilk

#Imports

import mods.prodigytech.rotarygrinder;
import crafttweaker.item.IItemStack;
import mods.prodigytech.solderer;
import mods.immersiveengineering.AlloySmelter;

#Add Coal Dust to Rotary Grinder
mods.prodigytech.rotarygrinder.addRecipe(<minecraft:coal>, <thermalfoundation:material:768>);

#Remove Magnetic Reassembler (Doesn't work with UniDict)
recipes.remove(<prodigytech:magnetic_reassembler>);
<prodigytech:magnetic_reassembler>.addTooltip(format.red("Disabled because it isn't supported by UniDict."));
#Raw Zorrasteel
recipes.remove(<prodigytech:zorrasteel_raw>);
recipes.addShaped("rawZorrasteel", <prodigytech:zorrasteel_raw>, [
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <ore:ingotSteel>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>]
]);
#Nether Furnace (Natura)
recipes.remove(<natura:netherrack_furnace>);
recipes.addShaped("netherFurnace", <natura:netherrack_furnace>, [
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>], 
    [<minecraft:netherrack>, <minecraft:furnace>, <minecraft:netherrack>], 
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>]
]);
#Solid Fuel Aeroheater
recipes.remove(<prodigytech:solid_fuel_aeroheater>);
recipes.addShaped("solidAeroheater", <prodigytech:solid_fuel_aeroheater>, [
    [<ore:ingotFerramic>, <ore:gemZanite>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotFerramic>, <ore:ingotSteel>]
]);
#Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped("magmaticAeroheater", <prodigytech:magmatic_aeroheater>, [
    [<ore:ingotFerramic>, <ore:gemZanite>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
    [<ceramics:clay_hard:5>, <ore:ingotSteel>, <ceramics:clay_hard:5>]
]);
#Incinerator
recipes.remove(<prodigytech:incinerator>);
recipes.addShaped("incinerator", <prodigytech:incinerator>, [
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:flint_and_steel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>]
]);
#Rotary Grinder
recipes.remove(<prodigytech:rotary_grinder>);
recipes.addShaped("rotaryGrinder", <prodigytech:rotary_grinder>, [
    [<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
    [<ore:ingotFerramic>, <ore:gearFerramic>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);
#Blower Furnace
recipes.remove(<prodigytech:blower_furnace>);
recipes.addShaped("blowerFurnace", <prodigytech:blower_furnace>, [
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);
#Calculator (End of Age 2)
recipes.remove(<calculator:calculator>);
recipes.addShaped("basicCalc", <calculator:calculator>.withTag({Energy: 1000 as long}), [[<ore:ingotZorrasteel>, <calculator:calculatorscreen>, <ore:ingotZorrasteel>],[<minecraft:stone_button>, <calculator:calculatorassembly>, <minecraft:stone_button>], [<ore:ingotZorrasteel>, <minecraft:stone_button>, <ore:ingotZorrasteel>]]);
<calculator:calculator>.addTooltip(format.red("Crafts Storing 1000 RF. Does not need to be Charged."));

#Calculator Assembly
recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped("calcAssembly", <calculator:calculatorassembly>, [
	[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>],
	[<minecraft:stone_button>, <prodigytech:circuit_perfected>, <minecraft:stone_button>],
	[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>]
]);

#Calculator Screen
recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped("calcScreen", <calculator:calculatorscreen>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<minecraft:glass>, <prodigytech:circuit_refined>, <minecraft:glass>],
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
#Aether Enchanter
recipes.remove(<aether_legacy:enchanter>);
recipes.addShaped("aetherEnchanter", <aether_legacy:enchanter>, [
	[<ore:ingotFerramic>, <aether_legacy:holystone_brick>, <ore:ingotFerramic>],
	[<aether_legacy:holystone_brick>, <ore:gemZanite>, <aether_legacy:holystone_brick>],
	[<ore:ingotFerramic>, <aether_legacy:holystone_brick>, <ore:ingotFerramic>]
]);
#Boss Items Tooltips
<aether_legacy:iron_bubble>.addTooltip(format.aqua("When equiped, it gives indefinite Water Breathing. Drops from the Slider within Bronze Dungeons in the Aether. It can also be found as Dungeon Loot."));
<aether_legacy:golden_feather>.addTooltip(format.aqua("When equiped, it gives indefinite Slow Falling. Drops from the Valkyrie Queen within Silver Dungeons in the Aether. It can also be found as Dungeon Loot."));
<aether_legacy:regeneration_stone>.addTooltip(format.aqua("When equiped, it gives indefinite Regeneration. Drops from the Sun Spirit within Gold Dungeons in the Aether. It can also be found as Dungeon Loot."));
#Aether Entry Tooltips
<aether_legacy:lore_book>.addTooltip(format.aqua("Acquired upon entry to the Aether."));
<aether_legacy:golden_parachute>.addTooltip(format.aqua("Acquired upon entry to the Aether."));
#New Circuit Recipes
mods.prodigytech.solderer.removeAll();
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_crude>, <aether_legacy:ambrosium_shard>, <prodigytech:circuit_crude>, 3);
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_refined>, <aether_legacy:zanite_gemstone>, <prodigytech:circuit_refined>, 6);
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <aether_legacy:enchanted_gravitite>, <prodigytech:circuit_perfected>, 9);