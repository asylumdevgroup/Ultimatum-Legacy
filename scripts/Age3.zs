#Age3.zs
#By MCAdventureCity and Revaeb

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.astralsorcery.Altar;

#Shifting Star
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/tool_shiftstar", <astralsorcery:itemshiftingstar>, 500, 200, [
	<astralsorcery:blockmarble:6>, <ore:dustAstralStarmetal>, <astralsorcery:blockmarble:6>,
	<aether_legacy:ambrosium_shard>, <liquid:astralsorcery.liquidstarlight>, <aether_legacy:ambrosium_shard>,
	<ore:blockEnchantedGravitite>, <ore:dustAstralStarmetal>, <ore:blockEnchantedGravitite>,
	<ore:gemAquamarine>, <ore:gemAquamarine>,
	<calculator:enddiamond>, <calculator:enddiamond>
]);

#Attunement Altar
mods.astralsorcery.Altar.addAttunementAltarRecipe("attunementaltar", <astralsorcery:blockattunementaltar>, 1000, 200, [
	<calculator:firediamond>, <ore:celestialCrystal>, <calculator:firediamond>,
	<ore:ingotAstralStarmetal>, <astralsorcery:itemshiftingstar>, <ore:ingotAstralStarmetal>,
	<ore:ingotZorrasteel>, <astralsorcery:blockattunementrelay>, <ore:ingotZorrasteel>,
	<ore:gemZanite>, <ore:gemZanite>,
	<ore:gemAquamarine>, <ore:gemAquamarine>
]);

#Ritual Pedestal
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/ritualpedestal", <astralsorcery:blockritualpedestal>, 1500, 200, [
	<ore:attunedCrystal>, <immersiveengineering:metal_decoration0:4>, <ore:attunedCrystal>,
	<astralsorcery:blockmarble:2>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockmarble:2>,
	<calculator:electricdiamond>, <astralsorcery:blockattunementrelay>, <calculator:electricdiamond>,
	<ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>,
	<aether_legacy:holystone_brick>, <aether_legacy:holystone_brick>
]);

#Celestial Altar
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 2500, 500, [
	<ore:gemAquamarine>, <astralsorcery:itemtunedcelestialcrystal>.withEmptyTag(), <ore:gemAquamarine>,
	<ore:blockZanite>, <immersiveengineering:metal_decoration0:5>, <ore:blockZanite>,
	<ore:ingotAstralStarmetal>, <contenttweaker:zorrasteel_casing>, <ore:ingotAstralStarmetal>,
	<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
	<astralsorcery:itemusabledust:1>, <astralsorcery:itemusabledust:1>
]);

#Starlight Infuser
mods.astralsorcery.Altar.addConstellationAltarRecipe("internal/altar/starlightinfuser", <astralsorcery:blockstarlightinfuser>, 2500, 300, [
	<prodigytech:primordium>, <ore:ingotAstralStarmetal>, <prodigytech:primordium>,
	<ore:gemAquamarine>, <astralsorcery:itemshiftingstar>, <ore:gemAquamarine>,
	<ore:attunedCrystal>, <calculator:material:1>, <ore:attunedCrystal>,
	<ore:blockZanite>, <ore:blockZanite>,
	<immersiveengineering:wooden_device0:7>, <immersiveengineering:wooden_device0:7>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockmarble:2>
]);

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