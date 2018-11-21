#Age1.zs
#By Buildmonger, CJWilk, Kaperios, and MCAdventureCity

#Imports
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.MaterialPart;

#Arrays
var lightIngots = [
    <materialpart:iron:ingot>,
    <materialpart:gold:ingot>,
    <materialpart:copper:ingot>,
    <materialpart:tin:ingot>,
    <materialpart:silver:ingot>,
    <materialpart:lead:ingot>
];

#Add Tooltip to Vanilla Tools for Silent Gear
<minecraft:stone_shovel>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:stone_pickaxe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:stone_axe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:diamond_sword>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:diamond_shovel>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:diamond_pickaxe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:diamond_axe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:golden_sword>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:golden_shovel>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:golden_pickaxe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:golden_axe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:wooden_hoe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:stone_hoe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:iron_hoe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:diamond_hoe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:golden_hoe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:iron_shovel>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:iron_pickaxe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:iron_axe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:iron_sword>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:wooden_sword>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:wooden_pickaxe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:wooden_shovel>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:wooden_axe>.addTooltip(format.red("Use Silent Gear's Tools!"));
<minecraft:stone_sword>.addTooltip(format.red("Use Silent Gear's Tools!"));

#Furnace ore smelting removal
furnace.remove(<minecraft:gold_ingot>);
furnace.remove(<thermalfoundation:material:129>);
furnace.remove(<thermalfoundation:material:130>);
furnace.remove(<thermalfoundation:material:131>);
furnace.remove(<thermalfoundation:material:133>);
furnace.remove(<thermalfoundation:material:132>);
furnace.remove(<thermalfoundation:material:136>);
furnace.remove(<thermalfoundation:material:135>);
furnace.remove(<thermalfoundation:material:134>);
furnace.remove(<minecraft:iron_ingot>);
furnace.remove(<thermalfoundation:material:128>);

#Engineer's Hammer
recipes.addShaped("engineersHammer", <immersiveengineering:tool>, [
    [null, <ore:stone>, <ore:string>], 
    [null, <ore:stickWood>, <ore:stone>], 
    [<ore:stickWood>]
]);
#Sluice Box
recipes.addShaped("sluiceBox", <magneticraft:sluice_box>, [
    [<ore:plankWood>, <ore:stickWood>],
    [<extraplanets:tools:2>, <ore:plankWood>, <ore:stickWood>],
    [<ore:slabStone>, <ore:slabStone>, <ore:slabStone>]
]);
#Basic Worktable
recipes.addShaped("basicWorktable", <artisanworktables:worktable:5>,[
    [<ore:plankWood>, <minecraft:crafting_table>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<thaumcraft:plank_greatwood>, null, <thaumcraft:plank_greatwood>]
]);
#Mason's Worktable
recipes.addShaped("masonsWorktable", <artisanworktables:worktable:2>, [
    [<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    [null, <artisanworktables:worktable:5>]
]);
#Coke Bricks
recipes.remove(<immersiveengineering:stone_decoration>);
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:itemClay>, <minecraft:brick_block>, <ore:itemClay>],
        [<minecraft:brick_block>, <ore:sandstone>, <minecraft:brick_block>],
        [<ore:itemClay>, <minecraft:brick_block>, <ore:itemClay>]
    ])
    .addTool(<ore:artisansTrowel>, 5)
    .addOutput(<immersiveengineering:stone_decoration> * 3)
    .create();
#Kiln Bricks
recipes.remove(<immersiveengineering:stone_decoration:10>);
RecipeBuilder.get("mason")
    .setShaped([
        [<quark:sandstone_new:1>, <minecraft:brick_block>],
        [<minecraft:brick_block>, <quark:sandstone_new:1>]
    ])
    .addTool(<ore:artisansTrowel>, 5)
    .addOutput(<immersiveengineering:stone_decoration:10> * 2)
    .create();

#Silent Gear Templates

    #