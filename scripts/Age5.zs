#Age5.zs
#By MCAdventureCity, CJWilk

#Imports

import mods.artisanworktables.builder.RecipeBuilder;
import mods.enderio.AlloySmelter;
import mods.immersiveengineering.MetalPress;

#Black Iron Ingot
recipes.remove(<extendedcrafting:material>);
mods.enderio.AlloySmelter.addRecipe(<extendedcrafting:material>, [<ore:ingotDarkSteel>, <immersiveengineering:material:19>, <enderio:item_material:50>], 25000);

#Black Iron Slate
recipes.remove(<extendedcrafting:material:2>);
mods.immersiveengineering.MetalPress.addRecipe(<extendedcrafting:material:2>, <extendedcrafting:material>, <immersiveengineering:mold>, 2000);

#Advanced Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
RecipeBuilder.get("basic")
    .setShaped([
        [<extendedcrafting:material:15>, <extendedcrafting:material:9>, <extendedcrafting:material:15>],
        [<artisanworktables:workstation:5>, <ore:blockGold>, <artisanworktables:workstation:5>],
        [<extendedcrafting:material:15>, <extendedcrafting:material:2>, <extendedcrafting:material:15>]
    ])
    .addTool(<ore:artisansDriver>, 5)
	.addTool(<ore:artisansPliers>, 5)
    .addOutput(<extendedcrafting:table_advanced>)
    .create();

#RFTools Machine Frame
recipes.remove(<rftools:machine_frame>);
recipes.addShaped("rftoolsFrame", <rftools:machine_frame>, [
    [<ore:ingotDarkSteel>, <enderio:item_material:36>, <ore:ingotDarkSteel>], 
    [<ore:nuggetVibrantAlloy>, <enderio:item_material:1>, <ore:nuggetVibrantAlloy>], 
    [<ore:ingotDarkSteel>, <enderio:item_material:36>, <ore:ingotDarkSteel>]
]);

