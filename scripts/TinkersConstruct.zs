#TinkersConstruct.zs
#By CJWilk

#Tool Station requires Treated Wood
recipes.remove(<tconstruct:tooltables:3>);
recipes.addShaped(<tconstruct:tooltables:3>, [[<ore:pattern>, <ore:pattern>, <ore:pattern>],[<ore:plankTreatedWood>, <ore:craftingTableWood>, <ore:plankTreatedWood>], [<ore:plankTreatedWood>, null, <ore:plankTreatedWood>]]);

#Seared Bricks in Alloy Kiln
furnace.remove(<tconstruct:materials>);
mods.immersiveengineering.AlloySmelter.addRecipe(<tconstruct:materials> * 2, <tconstruct:soil>, <tconstruct:soil>, 2000);