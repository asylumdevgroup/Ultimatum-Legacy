#Age4.zs
#By MCAdventureCity and Revaeb

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.calculator.atomic;
import mods.astralsorcery.Altar;
import mods.actuallyadditions.AtomicReconstructor;
import mods.enderio.AlloySmelter;
import mods.thermalexpansion.InductionSmelter;
import mods.rockhounding_chemistry.LabBlender;
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

#No Simple Machines + Chassis (-Stirling Generator)
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:item_material>);
mods.jei.JEI.removeAndHide(<enderio:item_material:69>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);

#No Duplicate Dusts
<ore:dustCopper>.remove(<enderio:item_material:26>);
<ore:dustTin>.remove(<enderio:item_material:27>);
<ore:dustLapis>.remove(<enderio:item_material:32>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>); 
mods.jei.JEI.hide(<enderio:item_material:26>);
mods.jei.JEI.hide(<enderio:item_material:27>);
mods.jei.JEI.hide(<enderio:item_material:32>);
mods.jei.JEI.hide(<enderio:item_material:33>);

#Fix the Chloride Bearing Compound, since Unidict screws with RM:C Salt
mods.rockhounding_chemistry.LabBlender.remove(<rockhounding_chemistry:chemical_items:6>);
mods.rockhounding_chemistry.LabBlender.add([<mekanism:salt>], <rockhounding_chemistry:chemical_items:6>);

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

#AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);
recipes.addShaped("aaIronCasing", <actuallyadditions:block_misc:9>, [
    [<ore:plateIron>, <ore:plasticLightGray>, <ore:plateIron>], 
    [<ore:plasticLightGray>, <ore:gemQuartzBlack>, <ore:plasticLightGray>], 
    [<ore:plateIron>, <ore:plasticLightGray>, <ore:plateIron>]
]);

#Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped("atomicReconstructor", <actuallyadditions:block_atomic_reconstructor>, [
	[<ore:ingotDarkSteel>, <ore:dustRedstone>, <ore:ingotDarkSteel>],
	[<ore:dustRedstone>, <actuallyadditions:block_misc:9>, <ore:dustRedstone>],
	[<ore:ingotDarkSteel>, <ore:dustRedstone>, <ore:ingotDarkSteel>]
]);

#Grains of Infinity
mods.actuallyadditions.AtomicReconstructor.addRecipe(<enderio:item_material:20>, <ore:dustStone>, 150);

#Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped("basicCapacitor", <enderio:item_basic_capacitor>, [
    [<ore:nuggetGold>, <pneumaticcraft:plastic:7>, <ore:nuggetGold>], 
    [<enderio:item_capacitor_grainy>, <ore:ingotCopper>, <enderio:item_capacitor_grainy>], 
    [<ore:nuggetGold>, <pneumaticcraft:plastic:7>, <ore:nuggetGold>]
]);

#Industrial Machine Chassis
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:1>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:51>, <enderio:item_material>);
recipes.addShaped("machineChassis", <enderio:item_material:1>, [
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], 
    [<minecraft:iron_bars>, <enderio:item_basic_capacitor>, <minecraft:iron_bars>], 
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>]
]);

#Change all the AA Crystals to require EnderIO Alloys
#Restonia
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal>, <ore:ingotRedstoneAlloy>, 40);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal>, <ore:blockRedstoneAlloy>, 400);

#Palis
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:1>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:1>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:1>, <ore:ingotEnderiumBase>, 40);

#Diamatine
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:2>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:2>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:2>, <ore:itemPulsatingCrystal>, 60);

#Void
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:3>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:3>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:3>, <ore:ingotDarkSteel>, 60);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:3>, <ore:blockDarkSteel>, 600);

#Emeradic
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:4>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:4>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:4>, <ore:itemVibrantCrystal>, 100);

#Enori
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:item_crystal:5>);
mods.actuallyadditions.AtomicReconstructor.removeRecipe(<actuallyadditions:block_crystal:5>);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:item_crystal:5>, <ore:ingotConstructionAlloy>, 80);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<actuallyadditions:block_crystal:5>, <ore:blockConstructionAlloy>, 800);

#Conduit Binder
furnace.remove(<enderio:item_material:4>);
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:4> * 16, [<ore:itemBinderComposite>, <actuallyadditions:item_misc:7>, <ore:itemBinderComposite>]);

#Soul Dye Blend
recipes.remove(<enderio:item_material:52>);
recipes.addShaped("soulBlend", <enderio:item_material:52>, [
	[<ore:dustSoularium>, <actuallyadditions:item_crystal_shard:5>, <enderio:item_material:49>],
	[<actuallyadditions:item_crystal_shard:5>, <enderio:item_material:50>, <actuallyadditions:item_crystal_shard:5>],
	[<enderio:item_material:49>, <actuallyadditions:item_crystal_shard:5>, <ore:dustSoularium>]
]);

#Soul Machine Chassis
mods.enderio.AlloySmelter.removeRecipe(<enderio:item_material:53>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material:52>, <enderio:item_material>);
mods.enderio.AlloySmelter.addRecipe(<enderio:item_material:53>, [<enderio:item_material:52>, <enderio:item_material:1>]);

#End Steel Chassis
recipes.remove(<enderio:item_material:66>);
recipes.addShaped("endChassis", <enderio:item_material:66>, [
	[<ore:ingotEndSteel>, <enderio:block_end_iron_bars>, <ore:ingotEndSteel>],
	[<ore:skullZombieElectrode>, <ore:itemEnderCrystal>, <ore:skullZombieElectrode>],
	[<ore:ingotEndSteel>, <enderio:block_end_iron_bars>, <ore:ingotEndSteel>]
]);

#Profiling Bench
recipes.remove(<rockhounding_chemistry:machines_a:11>);
recipes.addShaped("profilingBench", <rockhounding_chemistry:machines_a:11>.withTag({Energy: 0, Fuel: 0}), [
    [<ore:ingotElectricalSteel>, <minecraft:piston>, <ore:ingotElectricalSteel>], 
    [<ore:ingotElectricalSteel>, <enderio:item_material:54>, <ore:ingotElectricalSteel>], 
    [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]
]);

#Empowerer(End of Age 4?)
recipes.remove(<actuallyadditions:block_empowerer>);
recipes.addShaped("empowerer", <actuallyadditions:block_empowerer>, [
	[<ore:platePewter>, <actuallyadditions:item_crystal>, <ore:platePewter>], 
	[<actuallyadditions:block_misc:9>, <actuallyadditions:item_battery_double>.withEmptyTag(), <actuallyadditions:block_misc:9>], 
	[<ore:itemUnsouledMachineChassi>, <actuallyadditions:block_display_stand>, <ore:itemUnsouledMachineChassi>]
]);

#PneumaticCraft Refinery
recipes.remove(<pneumaticcraft:refinery>);
recipes.addShaped("refinery", <pneumaticcraft:refinery>, [
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>], 
    [<sonarcore:stableglass>, <calculator:flawlessdiamond>, <sonarcore:stableglass>], 
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);

#Plastic Mixer
recipes.remove(<pneumaticcraft:plastic_mixer>);
recipes.addShaped("plasticMixer", <pneumaticcraft:plastic_mixer>, [
    [<pneumaticcraft:ingot_iron_compressed>, <sonarcore:stableglass>, <pneumaticcraft:ingot_iron_compressed>], 
    [<sonarcore:stableglass>, <calculator:firediamond>, <sonarcore:stableglass>], 
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);