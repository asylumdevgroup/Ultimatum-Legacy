#ImmersiveEngineering.zs
#By CJWilk

#Imports
import mods.artisanworktables.builder.RecipeBuilder;

#Variables
var sandstone = <ore:sandstone>;
var sand = <ore:sand>;
var clayblock = <minecraft:clay>;
var clayball = <ore:itemClay>;
var brick = <ore:ingotBrick>;
var brickblock = <minecraft:brick_block>;

#Coke Bricks in Mason's Worktable
recipes.remove(<immersiveengineering:stone_decoration>);
RecipeBuilder.get("mason")
  .setShaped([
        [clayball, brick, clayball],
        [brick, sandstone, brick],
        [clayball, brick, clayball]
        ])
  .addTool(<ore:artisansTrowel>, 1)
  .addOutput(<immersiveengineering:stone_decoration> * 3)
  .create();

#Kiln Bricks in Mason's Worktable
recipes.remove(<immersiveengineering:stone_decoration:10>);
RecipeBuilder.get("mason")
  .setShaped([
        [sandstone, clayblock],
        [clayblock, sandstone],
        ])
  .addTool(<ore:artisansTrowel>, 1)
  .addOutput(<immersiveengineering:stone_decoration:10> * 2)
  .create();