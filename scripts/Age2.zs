#Age2.zs
#By MCAdventureCity, Kaperios

#Imports

import mods.prodigytech.rotarygrinder;
import crafttweaker.item.IItemStack;
import mods.calculator.scientific;

#Add Coal Dust to Rotary Grinder
mods.prodigytech.rotarygrinder.addRecipe(<minecraft:coal>, <thermalfoundation:material:768>);

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
    [<ore:ingotFerramic>, null, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotFerramic>, <ore:ingotSteel>]
]);
#Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped("magmaticAeroheater", <prodigytech:magmatic_aeroheater>, [
    [<ore:ingotFerramic>, null, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, null, <ore:ingotSteel>], 
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
recipes.addShaped("calcAssembly", <calculator:calculatorassembly>, [[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>],[<minecraft:stone_button>, <ore:dustRedstone>, <minecraft:stone_button>], [<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>]]);

#Calculator Screen
recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped("calcScreen", <calculator:calculatorscreen>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:glass>, <minecraft:redstone>, <minecraft:glass>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);
