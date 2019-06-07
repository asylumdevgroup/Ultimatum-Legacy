#Age4.zs
#By MCAdventureCity and Revaeb

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.calculator.atomic;
import mods.astralsorcery.Altar;
import mods.jei.JEI.removeAndHide;
import crafttweaker.item.IItemStack;

#Remove and Hide
var removal = [
    <magneticraft:electric_furnace>,
    <magneticraft:brick_furnace>,
    <magneticraft:iron_gear>,
    <magneticraft:steel_gear>,
    <magneticraft:tungsten_gear>,
    <magneticraft:copper_coil>.withTag({}),
    <magneticraft:crafting:1>
] as IItemStack[];

for item in removal {
    mods.jei.JEI.removeAndHide(item);
}

#Magneticraft Fabric Mesh (Fixes conflict with ExtraPlanets mesh)
recipes.remove(<magneticraft:crafting:6>);
recipes.addShaped("fabricMesh", <magneticraft:crafting:6>, [
    [<harvestcraft:wovencottonitem>, <ore:string>, <harvestcraft:wovencottonitem>], 
    [<ore:string>, <ore:string>, <ore:string>], 
    [<harvestcraft:wovencottonitem>, <ore:string>, <harvestcraft:wovencottonitem>]
]);
#These Items By Default Use Light Plates, but are changed to use Ore-Dicted plates as the Crushing Table is disabled.
#Fine Copper Wire
recipes.remove(<magneticraft:crafting:3>);
recipes.addShaped("fineCopperWire", <magneticraft:crafting:3> * 8, [
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>], 
    [<ore:ingotCopper>, <ore:plateIron>, <ore:ingotCopper>], 
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);
#Magneticraft Motor
recipes.remove(<magneticraft:crafting:2>);
recipes.addShaped("magMotor", <magneticraft:crafting:2> * 2, [
    [<ore:ingotLead>, <ore:plateIron>, null], 
    [<magneticraft:crafting:3>, <ore:dustRedstone>, <ore:ingotIron>], 
    [<ore:ingotLead>, <ore:plateIron>, null]
]);
#Magneticraft Machine Block
recipes.remove(<magneticraft:multiblock_parts>);
recipes.addShaped("magMachineBlock", <magneticraft:multiblock_parts>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>], 
    [<ore:ingotIron>, <magneticraft:crafting:2>, <ore:ingotIron>], 
    [<ore:plateLead>, <ore:plateLead>, <ore:plateLead>]
]);
#Magneticraft Wrench
recipes.remove(<magneticraft:wrench>);
recipes.addShaped("magWrench", <magneticraft:wrench>, [
    [null, <ore:plateIron>, <ore:ingotIron>], 
    [<ore:dustRedstone>, <ore:ingotIron>, null], 
    [<ore:ingotIron>, <ore:dustRedstone>, null]
]);
#Algorithm Separator
recipes.remove(<calculator:algorithmseparator>);
recipes.addShaped("algorithmSeparator", <calculator:algorithmseparator>, [
    [<calculator:material:4>, <calculator:powercube>, <calculator:material:4>], 
    [<calculator:stoneseparator>, <immersiveengineering:metal_decoration0:4>, <calculator:stoneseparator>], 
    [<calculator:material:4>, <calculator:powercube>, <calculator:material:4>]
]);

#Heavy Engineering Block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
mods.calculator.atomic.addRecipe(<ore:ingotElectrum>, <immersiveengineering:material:9>, <minecraft:piston>, <immersiveengineering:metal_decoration0:5>);

#Enriched Coal to Scientific
mods.calculator.basic.removeRecipe(<calculator:enrichedcoal>);
mods.calculator.scientific.addRecipe(<calculator:coaldust>, <calculator:coaldust>, <calculator:enrichedcoal>);

#Prunae Seeds
mods.calculator.basic.removeRecipe(<calculator:prunaeseeds>);
mods.calculator.basic.addRecipe(<ore:fuelCoke>, <minecraft:wheat_seeds>, <calculator:prunaeseeds>);

#Atomic Binder
recipes.remove(<calculator:atomicbinder>);
recipes.addShaped("atomicBinder", <calculator:atomicbinder> * 4, [
    [<calculator:enrichedcoal>, <calculator:reinforcedironingot>, <calculator:enrichedcoal>], 
    [<calculator:reinforcedironingot>, <calculator:enrichedgold>, <calculator:reinforcedironingot>], 
    [<calculator:enrichedcoal>, <calculator:reinforcedironingot>, <calculator:enrichedcoal>]
]);

#Iridescent Altar
mods.astralsorcery.Altar.addConstellationAltarRecipe("internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 4000, 600, [
	<ore:plasticMagenta>, <astralsorcery:blocklens>.withEmptyTag(), <ore:plasticMagenta>,
	<ore:ingotFiery>, <astralsorcery:itemtunedcelestialcrystal>.withEmptyTag(), <ore:ingotFiery>,
	<ore:plasticMagenta>, <ore:blockZanite>, <ore:plasticMagenta>,
	<astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>,
	<ore:blockZanite>, <ore:blockZanite>,
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
	<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
	<ore:ingotIronwood>, <ore:ingotIronwood>
]);

#PneumaticCraft Refinery (End of Age 4)
recipes.remove(<pneumaticcraft:refinery>);
recipes.addShaped("refinery", <pneumaticcraft:refinery>, [
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
    [<sonarcore:stableglass>, <calculator:flawlessdiamond>, <sonarcore:stableglass>], 
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);

#Plastic Mixer (Also End of Age 4)
recipes.remove(<pneumaticcraft:plastic_mixer>);
recipes.addShaped("plasticMixer", <pneumaticcraft:plastic_mixer>, [
    [<pneumaticcraft:ingot_iron_compressed>, <sonarcore:stableglass>, <pneumaticcraft:ingot_iron_compressed>], 
    [<sonarcore:stableglass>, <calculator:firediamond>, <sonarcore:stableglass>], 
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);