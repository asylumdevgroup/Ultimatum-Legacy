#Magneticraft.zs
#By MCAdventureCity

#variables
var brickslab = <minecraft:stone_slab:4>;
var log = <ore:logWood>;
var plank = <ore:plankWood>;
var stick = <ore:stickWood>;

#Crushing Table now requires bricks
recipes.remove(<magneticraft:crushing_table>);
recipes.addShaped(<magneticraft:crushing_table>, [[brickslab, brickslab, brickslab],[stick, plank, stick], [plank, log, plank]]);

#Add CoT Rocky Chunks to Crushing Table
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:10>, <contenttweaker:material_part:261>, true); #Iron
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:4>, <contenttweaker:material_part:266>, true); #Gold
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_0:4>, <contenttweaker:material_part:259>, true); #Copper
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:5>, <contenttweaker:material_part:260>, true); #Tin
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:10>, <contenttweaker:material_part:263>, true); #Silver
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:1>, <contenttweaker:material_part:264>, true); #Lead
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:9>, <contenttweaker:material_part:262>, true); #Aluminum
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:12>, <contenttweaker:material_part:265>, true); #Nickel