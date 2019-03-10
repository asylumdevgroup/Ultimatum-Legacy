#Age4.zs
#By MCAdventureCity

#Imports

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