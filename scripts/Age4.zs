#Age4.zs
#By MCAdventureCity and Revaeb

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.calculator.atomic;
import mods.astralsorcery.Altar;
import mods.immersiveengineering.Mixer;
import crafttweaker.oredict.IOreDictEntry; #Not strictly necessary but prevents some issues
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

#Make an oredict for the AS crystals(if we don't do this it ignores all of them because of the crystal properties)
	<ore:astralCrystal>.add(<astralsorcery:itemrockcrystalsimple>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemtunedrockcrystal>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());
    <ore:celestialCrystal>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:celestialCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());

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

#Astral Tome
recipes.remove(<astralsorcery:itemjournal>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
mods.calculator.scientific.addRecipe(<astralsorcery:itemcraftingcomponent:5>, <ore:gemAquamarine>, <astralsorcery:itemjournal>);

#Luminous Crafting Table
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped("luminousTable", <astralsorcery:blockaltar>, [
	[<ore:stoneMarble>, <astralsorcery:blockblackmarble:*>, <ore:stoneMarble>],
	[<ore:stoneMarble>, <artisanworktables:workstation:5>, <ore:stoneMarble>],
	[<ore:stoneMarble>, <ore:gemDiamondFake>, <ore:stoneMarble>]
]);

#Resonating Wand
recipes.remove(<astralsorcery:itemwand>);
recipes.addShaped("resonatingWand", <astralsorcery:itemwand>, [
	[null, <ore:gemAquamarine>, <ore:gemTanzanite>],
	[null, <ore:stoneMarble>, <ore:gemAquamarine>],
	[<ore:stoneMarble>, null, null]
]);

#Starlight
mods.immersiveengineering.Mixer.addRecipe(<liquid:astralsorcery.liquidstarlight> * 500, <liquid:water> * 500, [<ore:gemAquamarine>], 1000);
mods.immersiveengineering.Mixer.addRecipe(<liquid:astralsorcery.liquidstarlight> * 500, <liquid:water> * 500, [<astralsorcery:itemcraftingcomponent:4>], 1000);
mods.immersiveengineering.Mixer.addRecipe(<liquid:astralsorcery.liquidstarlight> * 500, <liquid:water> * 500, [<ore:astralCrystal>], 1000);

#Lightwell
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/lightwell", <astralsorcery:blockwell>, 200, 200, [
	<astralsorcery:blockmarble:6>, <ore:astralCrystal>, <astralsorcery:blockmarble:6>, 
	<astralsorcery:blockmarble:4>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockmarble:4>,
	<ore:gemAquamarine>, <astralsorcery:blockmarble:6>, <ore:gemAquamarine>
]);

#Linking Tool
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/tool_linking", <astralsorcery:itemlinkingtool>, 400, 200, [
	<ore:stickTreatedWood>, <ore:gemAquamarine>, <ore:astralCrystal>,
	null, <ore:logWood>, <ore:gemAquamarine>,
	<ore:logWood>, null, <ore:stickTreatedWood>
]);

#Spectral Relay
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 200, 200, [
	null, null, null,
	<ore:nuggetGold>, <astralsorcery:itemcraftingcomponent:3>, <ore:nuggetGold>,
	<astralsorcery:blockinfusedwood:1>, <ore:stoneMarble>, <astralsorcery:blockinfusedwood:1>
]);

#Starlight Crafting Altar
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 500, 200, [
	<astralsorcery:blockattunementrelay>, <ore:celestialCrystal>, <astralsorcery:blockattunementrelay>,
	<astralsorcery:blockmarble:4>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockaltar>, <astralsorcery:blockmarble:2>
]);

#AS Grindstone
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/grindstone", <astralsorcery:blockmachine:1>, 200, 200, [
	null, null, null,
	null, <ore:ingotAstralStarmetal>, <ore:stoneMarble>,
	<ore:stickTreatedWood>, <ore:stickTreatedWood>, <astralsorcery:blockinfusedwood>
]);

#Looking Glass
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/handtelescope", <astralsorcery:itemhandtelescope>, 200, 200, [
	null, <ore:stickTreatedWood>, <astralsorcery:itemcraftingcomponent:3>,
	<ore:stickTreatedWood>, <ore:ingotAstralStarmetal>, <ore:stickTreatedWood>,
	<astralsorcery:blockinfusedwood:1>, <ore:stickTreatedWood>, null
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