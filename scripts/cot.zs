#loader contenttweaker
//cot.zs
//By Kaperios (CJWilk did some Copy-Pasting too :p)

//Imports
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Part;
import mods.contenttweaker.Item;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;

//Material System - Overworld Ores
var iron = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Iron").setColor(11974326).build();
var gold = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Gold").setColor(16580431).build();
var copper = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Copper").setColor(13007132).build();
var tin = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Tin").setColor(12373468).build();
var silver = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Silver").setColor(12374747).build();
var lead = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Lead").setColor(4476003).build();
var aluminum = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Aluminum").setColor(15263987).build();
var nickel = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Nickel").setColor(15723948).build();
var platinum = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Platinum").setColor(7332599).build();
var uranium = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Uranium").setColor(8031340).build();
var titanium = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Titanium").setColor(13290452).build();

//Material System - Nether Ores
var cobalt = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(1925816).build();
var ardite = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(12137751).build();  

//Material System - Alloys
var steel = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Steel").setColor(8026746).build();
var electrum = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Electrum").setColor(16574319).build();
var invar = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Invar").setColor(11581621).build();  
var bronze = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Bronze").setColor(12877619).build();  
var constantan = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Constantan").setColor(13082455).build();  
var signalum = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Signalum").setColor(14826752).build();    
var lumium = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Lumium").setColor(14870930).build();  
var enderium = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Enderium").setColor(943719).build();
var manyullyn = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Manyullyn").setColor(8017305).build();
var brass = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Brass").setColor(14592052).build();
var tungstensteel = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Tungstensteel").setColor(5135720).build();
var refinedIron = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Refined Iron").setColor(14212833).build();
var redmetal = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Redmetal").setColor(16733245).build();
var chrome = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Chrome").setColor(14076107).build();
var zinc = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Zinc").setColor(14935521).build();
var tungsten = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Tungsten").setColor(6383209).build();
var iridium = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Iridium").setColor(13092316).build();
var mithril = mods.contenttweaker.MaterialSystem.getMaterialBuilder().setName("Mithril").setColor(6592956).build();

//Parts
var chunk = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("chunk").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName("chunk").build();
var rocky_chunk = mods.contenttweaker.MaterialSystem.getPartBuilder().setName("rocky_chunk").setPartType(mods.contenttweaker.MaterialSystem.getPartType("item")).setOreDictName("rockyChunk").build();

//Strings
var metals1 = [copper, tin, iron, aluminum] as Material[];
var metals2 = [silver, lead, nickel, gold, uranium] as Material[];
var metals3 = [platinum, titanium] as Material[];
var netherMetals = [ardite, cobalt] as Material[];
var alloys1 = [bronze, redmetal, refinedIron, brass, zinc] as Material[];
var alloys2 = [steel, electrum, invar, constantan, signalum, lumium, chrome] as Material[];
var alloys3 = [enderium, tungstensteel, tungsten, iridium, mithril] as Material[];
var netherAlloy = [manyullyn] as Material[];
var parts = ["ingot", "dust", "gear", "nugget", "plate", "rod"] as string[];
var oreTypes1 = ["dense_ore", "ore"] as string[];
var lightMetals = [copper, tin, iron, aluminum, silver, lead, nickel, gold] as Material[];
var chunks = [chunk, rocky_chunk] as Part[];
//Registering
for i, metal1 in metals1 {
    metal1.registerParts(parts);
    var ores1 = metal1.registerParts(oreTypes1);
    for i, ore1 in ores1 {
        var oreData1 = ore1.getData();
        oreData1.addDataValue("variants", "minecraft:stone");
        oreData1.addDataValue("hardness", "3");
        oreData1.addDataValue("resistance", "15");
        oreData1.addDataValue("harvestTool", "pickaxe");
        oreData1.addDataValue("harvestLevel", "1");
    }
    var blockData1 = metal1.registerPart("block").getData();
    blockData1.addDataValue("hardness", "5");
    blockData1.addDataValue("resistance", "30");
    blockData1.addDataValue("harvestTool", "pickaxe");
    blockData1.addDataValue("harvestLevel", "1");
}

for i, metal2 in metals2 {  
    metal2.registerParts(parts);

    var oreData2 = metal2.registerPart("ore").getData();
    oreData2.addDataValue("variants", "minecraft:stone");
    oreData2.addDataValue("hardness", "8");
    oreData2.addDataValue("resistance", "20");
    oreData2.addDataValue("harvestTool", "pickaxe");
    oreData2.addDataValue("harvestLevel", "2");

    var blockData2 = metal2.registerPart("block").getData();
    blockData2.addDataValue("hardness", "10");
    blockData2.addDataValue("resistance", "35");
    blockData2.addDataValue("harvestTool", "pickaxe");
    blockData2.addDataValue("harvestLevel", "2");
}

for i, metal3 in metals3 {
    metal3.registerParts(parts);

    var oreData3 = metal3.registerPart("ore").getData();
    oreData3.addDataValue("variants", "minecraft:stone");
    oreData3.addDataValue("hardness", "13");
    oreData3.addDataValue("resistance", "25");
    oreData3.addDataValue("harvestTool", "pickaxe");
    oreData3.addDataValue("harvestLevel", "3");

    var blockData3 = metal3.registerPart("block").getData();
    blockData3.addDataValue("hardness", "15");
    blockData3.addDataValue("resistance", "40");
    blockData3.addDataValue("harvestTool", "pickaxe");
    blockData3.addDataValue("harvestLevel", "3");
}

for i, netherMetal in netherMetals {
    netherMetal.registerParts(parts);

    var oreDataNether = netherMetal.registerPart("ore").getData();
    oreDataNether.addDataValue("variants", "minecraft:netherrack");
    oreDataNether.addDataValue("hardness", "18");
    oreDataNether.addDataValue("resistance", "30");
    oreDataNether.addDataValue("harvestTool", "pickaxe");
    oreDataNether.addDataValue("harvestLevel", "4");

    var blockDataNether = netherMetal.registerPart("block").getData();
    blockDataNether.addDataValue("hardness", "20");
    blockDataNether.addDataValue("resistance", "45");
    blockDataNether.addDataValue("harvestTool", "pickaxe");
    blockDataNether.addDataValue("harvestLevel", "4");
}

for i, alloy1 in alloys1 {
    alloy1.registerParts(parts);
    var blockAlloyData1 = alloy1.registerPart("block").getData();
    blockAlloyData1.addDataValue("hardness", "5");
    blockAlloyData1.addDataValue("resistance", "30");
    blockAlloyData1.addDataValue("harvestTool", "pickaxe");
    blockAlloyData1.addDataValue("harvestLevel", "1");
}

for i, alloy2 in alloys2 {  
    alloy2.registerParts(parts);
    var blockAlloyData2 = alloy2.registerPart("block").getData();
    blockAlloyData2.addDataValue("hardness", "10");
    blockAlloyData2.addDataValue("resistance", "35");
    blockAlloyData2.addDataValue("harvestTool", "pickaxe");
    blockAlloyData2.addDataValue("harvestLevel", "2");
}

for i, alloy3 in alloys3 {  
    alloy3.registerParts(parts);
    var blockAlloyData3 = alloy3.registerPart("block").getData();
    blockAlloyData3.addDataValue("hardness", "15");
    blockAlloyData3.addDataValue("resistance", "40");
    blockAlloyData3.addDataValue("harvestTool", "pickaxe");
    blockAlloyData3.addDataValue("harvestLevel", "3");
}

for i, netherAlloy in netherAlloy {
	netherAlloy.registerParts(parts);
	var blockNetherAlloyData = netherAlloy.registerPart("block").getData();
	blockNetherAlloyData.addDataValue("hardness", "20");
    blockNetherAlloyData.addDataValue("resistance", "45");
    blockNetherAlloyData.addDataValue("harvestTool", "pickaxe");
    blockNetherAlloyData.addDataValue("harvestLevel", "4");
}

for i, lightMetal in lightMetals {
    lightMetal.registerParts(chunks);
}