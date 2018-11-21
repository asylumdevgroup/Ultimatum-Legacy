#Vanilla.zs
#By MCAdventureCity and CJWilk

#Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[null, <ore:ingotSteel>, null]]);

#Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>, <minecraft:flint>]);

#No Ingots in Furnace
furnace.remove(<contenttweaker:material_part:18>);
furnace.remove(<contenttweaker:material_part:60>);
furnace.remove(<contenttweaker:material_part>);
furnace.remove(<contenttweaker:material_part:9>);
furnace.remove(<contenttweaker:material_part:36>);
furnace.remove(<contenttweaker:material_part:44>);
furnace.remove(<contenttweaker:material_part:27>);
furnace.remove(<contenttweaker:material_part:52>);