#Age3.zs
#By MCAdventureCity

#Imports


#Enriched Gold to Sci Calc
mods.calculator.basic.removeRecipe(<calculator:enrichedgold>);
mods.calculator.scientific.addRecipe(<minecraft:gold_ingot>, <minecraft:redstone>, <calculator:enrichedgold> * 4);

#Power Cube
recipes.remove(<calculator:powercube>);
recipes.addShaped("powerCube", <calculator:powercube>, [
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>], 
    [<ore:cobblestone>, <prodigytech:energion_battery_double>, <ore:cobblestone>], 
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>]
]);
#Hand-Cranked Generator
recipes.remove(<calculator:handcrankedgenerator>);
recipes.addShaped("handCrankedGenerator", <calculator:handcrankedgenerator>, [
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>], 
    [<immersiveengineering:treated_wood>, <calculator:powercube>, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
]);
#Treated Casing
recipes.addShaped("treatedCasing", <contenttweaker:treated_casing>, [
    [<immersiveengineering:material>, <immersiveengineering:treated_wood>, <immersiveengineering:material>], 
    [<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material>, <immersiveengineering:treated_wood>, <immersiveengineering:material>]
]);
#Bronze Casing
recipes.addShaped("bronzeCasing", <contenttweaker:bronze_casing>, [
    [<materialpart:bronze:ingot>, <materialpart:bronze:ingot>, <materialpart:bronze:ingot>], 
    [<materialpart:bronze:ingot>, <contenttweaker:treated_casing>, <materialpart:bronze:ingot>], 
    [<materialpart:bronze:ingot>, <materialpart:bronze:ingot>, <materialpart:bronze:ingot>]
]);
#Iron Casing
recipes.addShaped("ironCasing", <contenttweaker:iron_casing>, [
    [<materialpart:iron:ingot>, <materialpart:iron:ingot>, <materialpart:iron:ingot>], 
    [<materialpart:iron:ingot>, <contenttweaker:bronze_casing>, <materialpart:iron:ingot>], 
    [<materialpart:iron:ingot>, <materialpart:iron:ingot>, <materialpart:iron:ingot>]
]);
#Diamond Casing
recipes.addShaped("diamondCasing", <contenttweaker:diamond_casing>, [
    [<minecraft:diamond>, <pneumaticcraft:ingot_iron_compressed>, <minecraft:diamond>], 
    [<pneumaticcraft:ingot_iron_compressed>, <contenttweaker:iron_casing>, <pneumaticcraft:ingot_iron_compressed>], 
    [<minecraft:diamond>, <pneumaticcraft:ingot_iron_compressed>, <minecraft:diamond>]
]);
#Engineer's Workstation
recipes.addShaped("engWorkstation", <artisanworktables:workstation:6>, [
    [<calculator:reinforcedironingot>, <ore:ingotBronze>, <calculator:reinforcedironingot>], 
    [<ore:ingotBronze>, <contenttweaker:diamond_casing>, <ore:ingotBronze>], 
    [<ore:ingotSteel>, <artisanworktables:workstation:5>, <ore:ingotSteel>]
]);