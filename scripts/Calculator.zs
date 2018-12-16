#Calculator.zs
#By CJWilk

import crafttweaker.item.IItemStack;
import mods.calculator.scientific;

#Calculator
recipes.remove(<calculator:calculator>);
recipes.addShaped("basicCalc", <calculator:calculator>.withTag({Energy: 1000 as long}), [[<ore:ingotZorrasteel>, <calculator:calculatorscreen>, <ore:ingotZorrasteel>],[<minecraft:stone_button>, <calculator:calculatorassembly>, <minecraft:stone_button>], [<ore:ingotZorrasteel>, <minecraft:stone_button>, <ore:ingotZorrasteel>]]);
<calculator:calculator>.addTooltip(format.red("Crafts Storing 1000 RF. Does not need to be Charged."));

#Calculator Assembly
recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped("calcAssembly", <calculator:calculatorassembly>, [[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>],[<minecraft:stone_button>, <ore:dustRedstone>, <minecraft:stone_button>], [<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>]]);

#Calculator Screen
recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped("calcScreen", <calculator:calculatorscreen>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:glass>, <minecraft:redstone>, <minecraft:glass>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

#Enriched Gold to Sci Calc
mods.calculator.basic.removeRecipe(<calculator:enrichedgold>);
mods.calculator.scientific.addRecipe(<minecraft:gold_ingot>, <minecraft:redstone>, <calculator:enrichedgold> * 4);