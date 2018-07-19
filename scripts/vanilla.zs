#Vanilla.zs
#By MCAdventureCity and CJWilk

#Stone tool Removals
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:stone_pickaxe>);
recipes.remove(<minecraft:stone_axe>);
recipes.remove(<minecraft:stone_shovel>);
recipes.remove(<minecraft:stone_hoe>);

#Stone tools now take flint
recipes.addShaped(<minecraft:stone_sword>, [[<minecraft:flint>],[<minecraft:flint>], [<ore:stickWood>]]);
recipes.addShaped(<minecraft:stone_pickaxe>, [[<minecraft:flint>, <minecraft:flint>, <minecraft:flint>],[null, <ore:stickWood>, null], [null, <ore:stickWood>, null]]);
recipes.addShaped(<minecraft:stone_axe>, [[<minecraft:flint>, <minecraft:flint>],[<minecraft:flint>, <ore:stickWood>], [null, <ore:stickWood>]]);
recipes.addShaped(<minecraft:stone_shovel>, [[<minecraft:flint>],[<ore:stickWood>], [<ore:stickWood>]]);
recipes.addShaped(<minecraft:stone_hoe>, [[<minecraft:flint>, <minecraft:flint>],[null, <ore:stickWood>], [null, <ore:stickWood>]]);

#Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[null, <ore:ingotSteel>, null]]);

#Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>, <minecraft:flint>]);

#No Ingots in Furnace
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
furnace.remove(<techreborn:ingot:19>);

