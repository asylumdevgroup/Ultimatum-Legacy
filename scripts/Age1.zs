#Age1.zs
#By CJWilk, Kaperios, and MCAdventureCity

#Imports
import mods.artisanworktables.builder.RecipeBuilder;
import mods.contenttweaker.MaterialPart;
import mods.magneticraft.CrushingTable;
import crafttweaker.oredict.IOreDictEntry;
import mods.prodigytech.rotarygrinder;
import mods.prodigytech.solderer;

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

#Quartz Grindstone is Disabled
recipes.remove(<appliedenergistics2:grindstone>);
<appliedenergistics2:grindstone>.addTooltip(format.red("Disabled as the Rotary Grinder is your first ore doubling."));

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
#Add CoT Rocky Chunks to Crushing Table

mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:10>, <magneticraft:rocky_chunks>, true); #Iron
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:4>, <magneticraft:rocky_chunks:1>, true); #Gold
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_0:4>, <magneticraft:rocky_chunks:2>, true); #Copper
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:5>, <magneticraft:rocky_chunks:13>, true); #Tin
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:10>, <magneticraft:rocky_chunks:12>, true); #Silver
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_2:1>, <magneticraft:rocky_chunks:3>, true); #Lead
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:9>, <magneticraft:rocky_chunks:7>, true); #Aluminum
mods.magneticraft.CrushingTable.addRecipe(<contenttweaker:sub_block_holder_1:12>, <magneticraft:rocky_chunks:10>, true); #Nickel

recipes.addShapeless("ironRockyChunk", <materialpart:iron:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_2:10>]);
recipes.addShapeless("goldRockyChunk", <materialpart:gold:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_2:4>]);
recipes.addShapeless("copperRockyChunk", <materialpart:copper:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_0:4>]);
recipes.addShapeless("tinRockyChunk", <materialpart:tin:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_2:5>]);
recipes.addShapeless("silverRockyChunk", <materialpart:silver:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_1:10>]);
recipes.addShapeless("leadRockyChunk", <materialpart:lead:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_2:1>]);
recipes.addShapeless("aluminumRockyChunk", <materialpart:aluminum:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_1:9>]);
recipes.addShapeless("nickelRockyChunk", <materialpart:nickel:rocky_chunk>,[<ore:artisansHammer>.transformDamage(1), <contenttweaker:sub_block_holder_1:12>]);
#No Smelting Clay Bucket in Vanilla Furnace (Force Alloy Kiln)
furnace.remove(<ceramics:clay_bucket>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>, <ore:sand>, 2000);

#Hide Duplicate Unfired Clay Bucket
mods.jei.JEI.hide(<ceramics:clay_bucket_block>);

#Shears in Kiln
furnace.remove(<ceramics:clay_shears>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:clay_shears>, <ceramics:unfired_clay:1>, <ore:sand>, 2000);

#Porcelain Brick in Kiln
furnace.remove(<ceramics:unfired_clay:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, <ore:sand>, 2000);
#Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped("bucket", <minecraft:bucket>, [
    [<ore:ingotSteel>, null, <ore:ingotSteel>],
    [null, <ore:ingotSteel>, null]
]);
#Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless("flintAndSteel", <minecraft:flint_and_steel>, [<ore:ingotSteel>, <minecraft:flint>]);
#Engineer's Hammer
recipes.addShaped("engineersHammer", <immersiveengineering:tool>, [
    [null, <ore:stone>, <ore:string>], 
    [null, <ore:stickWood>, <ore:stone>], 
    [<ore:stickWood>]
]);
#Crushing Table
recipes.remove(<magneticraft:crushing_table>);
<magneticraft:crushing_table>.addTooltip(format.red("Disabled due to incompatibility with ContentTweaker Materials."));
#Sluice Box
recipes.remove(<magneticraft:sluice_box>);
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
#Explosion Furnace
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
#Treated Casing
recipes.addShaped("treatedCasing", <contenttweaker:treated_casing>, [
    [<immersiveengineering:material>, <immersiveengineering:treated_wood>, <immersiveengineering:material>], 
    [<immersiveengineering:treated_wood>, null, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material>, <immersiveengineering:treated_wood>, <immersiveengineering:material>]
]);
#Add Coal Dust to Rotary Grinder
mods.prodigytech.rotarygrinder.addRecipe(<minecraft:coal>, <thermalfoundation:material:768>);
#Remove Magnetic Reassembler (Doesn't work with UniDict)
recipes.remove(<prodigytech:magnetic_reassembler>);
<prodigytech:magnetic_reassembler>.addTooltip(format.red("Disabled because it isn't supported by UniDict."));
#Nether Furnace (Natura)
recipes.remove(<natura:netherrack_furnace>);
recipes.addShaped("netherFurnace", <natura:netherrack_furnace>, [
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>], 
    [<minecraft:netherrack>, <minecraft:furnace>, <minecraft:netherrack>], 
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>]
]);
#Solid Fuel Aeroheater
recipes.remove(<prodigytech:solid_fuel_aeroheater>);
recipes.addShaped("solidAeroheater", <prodigytech:solid_fuel_aeroheater>, [
    [<ore:ingotFerramic>, <ore:gemZanite>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotFerramic>, <ore:ingotSteel>]
]);
#Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped("magmaticAeroheater", <prodigytech:magmatic_aeroheater>, [
    [<ore:ingotFerramic>, <ore:gemZanite>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], 
    [<ceramics:clay_hard:5>, <ore:ingotSteel>, <ceramics:clay_hard:5>]
]);
#Incinerator
recipes.remove(<prodigytech:incinerator>);
recipes.addShaped("incinerator", <prodigytech:incinerator>, [
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:flint_and_steel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>]
]);
#Rotary Grinder
recipes.remove(<prodigytech:rotary_grinder>);
recipes.addShaped("rotaryGrinder", <prodigytech:rotary_grinder>, [
    [<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
    [<ore:ingotFerramic>, <ore:gearFerramic>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);
#Blower Furnace
recipes.remove(<prodigytech:blower_furnace>);
recipes.addShaped("blowerFurnace", <prodigytech:blower_furnace>, [
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);
#Calculator (End of Age 2)
recipes.remove(<calculator:calculator>);
recipes.addShaped("basicCalc", <calculator:calculator>.withTag({Energy: 1000 as long}), [[<ore:ingotBronze>, <calculator:calculatorscreen>, <ore:ingotBronze>],
    [<minecraft:stone_button>, <calculator:calculatorassembly>, <minecraft:stone_button>],
    [<ore:ingotBronze>, <minecraft:stone_button>, <ore:ingotBronze>]]);
<calculator:calculator>.addTooltip(format.red("Crafts Storing 1000 RF. Does not need to be Charged."));
#Calculator Assembly
recipes.remove(<calculator:calculatorassembly>);
recipes.addShaped("calcAssembly", <calculator:calculatorassembly>, [
	[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>],
	[<minecraft:stone_button>, <prodigytech:circuit_perfected>, <minecraft:stone_button>],
	[<ore:ingotFerramic>, <minecraft:stone_button>, <ore:ingotFerramic>]
]);
#Calculator Screen
recipes.remove(<calculator:calculatorscreen>);
recipes.addShaped("calcScreen", <calculator:calculatorscreen>, [
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
	[<minecraft:glass>, <prodigytech:circuit_refined>, <minecraft:glass>],
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
#Aether Enchanter
recipes.remove(<aether_legacy:enchanter>);
recipes.addShaped("aetherEnchanter", <aether_legacy:enchanter>, [
	[<ore:ingotFerramic>, <aether_legacy:holystone_brick>, <ore:ingotFerramic>],
	[<aether_legacy:holystone_brick>, <ore:gemZanite>, <aether_legacy:holystone_brick>],
	[<ore:ingotFerramic>, <aether_legacy:holystone_brick>, <ore:ingotFerramic>]
]);
#Boss Items Tooltips
<aether_legacy:iron_bubble>.addTooltip(format.aqua("When equiped, it gives indefinite Water Breathing. Drops from the Slider within Bronze Dungeons in the Aether. It can also be found as Dungeon Loot."));
<aether_legacy:golden_feather>.addTooltip(format.aqua("When equiped, it gives indefinite Slow Falling. Drops from the Valkyrie Queen within Silver Dungeons in the Aether. It can also be found as Dungeon Loot."));
<aether_legacy:regeneration_stone>.addTooltip(format.aqua("When equiped, it gives indefinite Regeneration. Drops from the Sun Spirit within Gold Dungeons in the Aether. It can also be found as Dungeon Loot."));
#Aether Entry Tooltips
<aether_legacy:lore_book>.addTooltip(format.aqua("Acquired upon entry to the Aether."));
<aether_legacy:golden_parachute>.addTooltip(format.aqua("Acquired upon entry to the Aether."));
#New Circuit Recipes
mods.prodigytech.solderer.removeAll();
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_crude>, <aether_legacy:ambrosium_shard>, <prodigytech:circuit_crude>, 3);
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_refined>, <aether_legacy:zanite_gemstone>, <prodigytech:circuit_refined>, 6);
mods.prodigytech.solderer.addRecipe(<prodigytech:pattern_circuit_perfected>, <aether_legacy:enchanted_gravitite>, <prodigytech:circuit_perfected>, 9);