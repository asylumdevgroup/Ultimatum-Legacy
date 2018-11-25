#Age1.zs
#By Buildmonger, CJWilk, Kaperios, and MCAdventureCity

#Imports
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.MaterialPart;
import crafttweaker.oredict.IOreDictEntry;

#Arrays
var lightIngots = [
    <ore:ingotIron>,
	<ore:ingotGold>,
	<ore:ingotCopper>,
	<ore:ingotTin>,
	<ore:ingotSilver>,
	<ore:ingotLead>,
	<ore:ingotAluminum>,
	<ore:ingotNickel>
] as IOreDictEntry[];

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
# For each IOreDicEntry in the array of OreDictionariesEntries
for dict in lightIngots{
    # For each ingot in the dictionary
    for ingot in dict.items{
        # Remove it from the furnace
        furnace.remove(ingot);
    }
}

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
#Basic Workstation
recipes.addShaped("basicWorkstation", <artisanworktables:workstation:5>,[
    [<ore:plankWood>, <artisanworktables:worktable:5>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:ingotIron>,<ore:ingotIron>, <ore:ingotIron>]
]);
#Mason's Worktable
recipes.addShaped("masonsWorktable", <artisanworktables:worktable:2>, [
    [<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    [null, <artisanworktables:worktable:5>]
]);
#Mason's Workstation
recipes.addShaped("masonsWorkstation", <artisanworktables:workstation:2>, [
    [<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>],
    [null, <artisanworktables:workstation:5>]
]);
recipes.addShaped("masonsWorkstationAlt", <artisanworktables:workstation:2>, [
    [null, <artisanworktables:worktable:2>, null],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
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
#Blast Bricks
recipes.remove(<immersiveengineering:stone_decoration:1>);
RecipeBuilder.get("mason")
    .setShaped([
        [<ore:clayPorcelain>, <ceramics:clay_hard:1>, <ore:clayPorcelain>],
        [<ceramics:clay_hard:1>, <ceramics:clay_hard:5>, <ceramics:clay_hard:1>],
        [<ore:clayPorcelain>, <ceramics:clay_hard:1>, <ore:clayPorcelain>]
    ])
    .addTool(<ore:artisansTrowel>, 5)
	.addTool(<ore:artisansChisel>, 5)
    .addOutput(<immersiveengineering:stone_decoration:1> * 3)
    .create();
#Explosion Furnace (End of Age 1)
recipes.remove(<prodigytech:explosion_furnace>);
RecipeBuilder.get("basic")
    .setShaped([
        [<ore:ingotSteel>, <minecraft:stonebrick>, <ore:ingotSteel>],
        [<minecraft:stonebrick>, <minecraft:flint_and_steel>, <minecraft:stonebrick>],
        [<ore:ingotSteel>, <minecraft:stonebrick>, <ore:ingotSteel>]
    ])
	.setSecondaryIngredients([<minecraft:nether_brick> * 4, <minecraft:blaze_powder> * 4])
    .addTool(<ore:artisansTrowel>, 5)
	.addTool(<ore:artisansChisel>, 5)
    .addOutput(<prodigytech:explosion_furnace>)
    .create();
#Silent Gear Templates

    #