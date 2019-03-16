#Age4.zs
#By MCAdventureCity

#Imports

import mods.calculator.basic;
import mods.calculator.scientific;
import mods.calculator.atomic;

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