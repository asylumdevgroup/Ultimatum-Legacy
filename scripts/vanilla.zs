#Vanilla.zs
#By MCAdventureCity and CJWilk

#Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[null, <ore:ingotSteel>, null]]);

#Flint and Steel
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [<ore:ingotSteel>, <minecraft:flint>]);



