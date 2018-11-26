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
mods.magneticraft.CrushingTable.addRecipe(<materialpart:iron:ore>, <materialpart:iron:rocky_chunk>, true); #Iron
mods.magneticraft.CrushingTable.addRecipe(<materialpart:gold:ore>, <materialpart:gold:rocky_chunk>, true); #Gold
mods.magneticraft.CrushingTable.addRecipe(<materialpart:copper:ore>, <materialpart:copper:rocky_chunk>, true); #Copper
mods.magneticraft.CrushingTable.addRecipe(<materialpart:tin:ore>, <materialpart:tin:rocky_chunk>, true); #Tin
mods.magneticraft.CrushingTable.addRecipe(<materialpart:silver:ore>, <materialpart:silver:rocky_chunk>, true); #Silver
mods.magneticraft.CrushingTable.addRecipe(<materialpart:lead:ore>, <materialpart:lead:rocky_chunk>, true); #Lead
mods.magneticraft.CrushingTable.addRecipe(<materialpart:aluminum:ore>, <materialpart:aluminum:rocky_chunk>, true); #Aluminum
mods.magneticraft.CrushingTable.addRecipe(<materialpart:nickel:ore>, <materialpart:nickel:rocky_chunk>, true); #Nickel