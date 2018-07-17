#vanilla.zs
#By MCAdventureCity

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