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