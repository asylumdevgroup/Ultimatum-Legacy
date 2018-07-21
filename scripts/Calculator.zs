#Calculator.zs
#By CJWilk

#Calculator
recipes.remove(<calculator:calculator>);
recipes.addShaped(<calculator:calculator>.withTag({Energy: 1000 as long}), [[<minecraft:iron_ingot>, <calculator:calculatorscreen>, <minecraft:iron_ingot>],[<minecraft:stone_button>, <calculator:calculatorassembly>, <minecraft:stone_button>], [<minecraft:iron_ingot>, <minecraft:stone_button>, <minecraft:iron_ingot>]]);
<calculator:calculator>.addTooltip(format.red("Crafts Storing 1000 RF. Does not need to be Charged."));

#Calculator Assembly
recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped(<calculator:calculatorassembly>, [[<ore:ingotCopper>, <minecraft:stone_button>, <ore:ingotCopper>],[<minecraft:stone_button>, <ore:dustRedstone>, <minecraft:stone_button>], [<ore:ingotCopper>, <minecraft:stone_button>, <ore:ingotCopper>]]);

#Calculator Screen
recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped(<calculator:calculatorscreen>, [[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],[<minecraft:glass>, <minecraft:redstone>, <minecraft:glass>], [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]]);

#Enriched Gold to Sci Calc
mods.calculator.basic.removeRecipe(<calculator:enrichedgold>);
mods.calculator.scientific.addRecipe(<minecraft:gold_ingot>, <minecraft:redstone>, <calculator:enrichedgold> * 4);