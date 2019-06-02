#Age3.zs
#By MCAdventureCity

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.artisanworktables.builder.RecipeBuilder;

#Enriched Gold to Sci Calc
mods.calculator.basic.removeRecipe(<calculator:enrichedgold>);
mods.calculator.scientific.addRecipe(<ore:ingotGold>, <minecraft:redstone>, <calculator:enrichedgold> * 4);

#Power Cube
recipes.remove(<calculator:powercube>);
recipes.addShaped("powerCube", <calculator:powercube>, [
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>], 
    [<ore:cobblestone>, <prodigytech:energion_dust>, <ore:cobblestone>], 
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>]
]);
#Hand-Cranked Generator
recipes.remove(<calculator:handcrankedgenerator>);
recipes.addShaped("handCrankedGenerator", <calculator:handcrankedgenerator>, [
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>], 
    [<immersiveengineering:treated_wood>, <calculator:powercube>, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
]);
#Pressure Chamber Wall
recipes.remove(<pneumaticcraft:pressure_chamber_wall>);
recipes.addShaped("pressureChamberWall", <pneumaticcraft:pressure_chamber_wall> * 8, [
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
    [<pneumaticcraft:ingot_iron_compressed>, <ore:ingotFerramic>, <pneumaticcraft:ingot_iron_compressed>], 
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);
#Engineer's Workstation
recipes.addShaped("engWorkstation", <artisanworktables:workstation:6>, [
    [<calculator:reinforcedironingot>, <ore:ingotBronze>, <calculator:reinforcedironingot>], 
    [<ore:ingotBronze>, <contenttweaker:diamond_casing>, <ore:ingotBronze>], 
    [<ore:ingotSteel>, <artisanworktables:workstation:5>, <ore:ingotSteel>]
]);
#Alternate IE Vacuum Tube Recipe
RecipeBuilder.get("engineer")
    .setShaped([
        [<ore:blockGlass, <ore:wireCopper>, <ore:blockGlass>],
        [<ore:blockGlass>, <ore:wireCopper>, <ore:blockGlass>],
        [<ore:ingotSteel>, <ore:wireCopper>, <ore:ingotSteel>]
    ])
    .addTool(<ore:artisansCutters>, 5)
	.addTool(<ore:artisansPliers>, 5)
    .addOutput(<immersiveengineering:material:26> * 2)
    .create();
#IE Engineer's Workbench
recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped("ieWorkbench", <immersiveengineering:wooden_device0:2>, [
    [<immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>, <immersiveengineering:treated_wood>], 
    [<ore:workbench>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:wooden_decoration>]
]);
#Redstone Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped("redstoneEngineeringBlock", <immersiveengineering:metal_decoration0:3>, [
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>], 
    [<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>], 
    [<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]
]);
#Light Engineering Block (End of Age 3)
recipes.remove(<immersiveengineering:metal_decoration0:4>);
recipes.addShaped("lightEngineeringBlock", <immersiveengineering:metal_decoration0:4> * 2, [
    [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>], 
    [<ore:ingotCopper>, <immersiveengineering:material:26>, <ore:ingotCopper>], 
    [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]
]);