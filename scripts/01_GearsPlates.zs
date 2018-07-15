#01_GearsPlates.zs
#By CJWilk

#No Gears and Plates from Smeltery
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:3>); #Plate Cast
mods.jei.JEI.removeAndHide(<tconstruct:cast_custom:4>); #Gear Cast
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:24>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:25>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:256>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:257>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:258>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:259>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:260>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:261>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:262>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:263>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:295>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:288>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:289>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:290>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:291>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:292>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:293>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:294>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:32>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:33>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:320>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:321>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:322>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:323>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:324>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:325>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:326>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:327>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:359>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:352>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:353>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:354>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:355>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:356>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:357>);
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:358>);
mods.tconstruct.Casting.removeTableRecipe(<immersiveengineering:metal:35>);
mods.tconstruct.Casting.removeTableRecipe(<ceramics:unfired_clay:9>);

#No Crafting Plates in Crafting Table
recipes.remove(<thermalfoundation:material:353>);
recipes.remove(<thermalfoundation:material:352>);
recipes.remove(<thermalfoundation:material:325>);
recipes.remove(<thermalfoundation:material:324>);
recipes.remove(<thermalfoundation:material:323>);
recipes.remove(<thermalfoundation:material:322>);
recipes.remove(<thermalfoundation:material:354>);
recipes.remove(<thermalfoundation:material:355>);
recipes.remove(<thermalfoundation:material:356>);
recipes.remove(<thermalfoundation:material:357>);
recipes.remove(<thermalfoundation:material:358>);
recipes.remove(<thermalfoundation:material:359>);
recipes.remove(<thermalfoundation:material:321>);
recipes.remove(<thermalfoundation:material:320>);
recipes.remove(<thermalfoundation:material:33>);
recipes.remove(<thermalfoundation:material:32>);
recipes.remove(<redstonearsenal:material:128>);
recipes.remove(<thaumcraft:plate:3>);
recipes.remove(<thaumcraft:plate:2>);
recipes.remove(<immersiveengineering:metal:35>);

#No Crafting Gears in Crafting Table
recipes.remove(<thermalfoundation:material:293>);
recipes.remove(<thermalfoundation:material:292>);
recipes.remove(<thermalfoundation:material:291>);
recipes.remove(<thermalfoundation:material:290>);
recipes.remove(<thermalfoundation:material:289>);
recipes.remove(<thermalfoundation:material:288>);
recipes.remove(<thermalfoundation:material:264>);
recipes.remove(<thermalfoundation:material:263>);
recipes.remove(<redstonearsenal:material:96>);
recipes.remove(<thermalfoundation:material:294>);
recipes.remove(<thermalfoundation:material:295>);
recipes.remove(<thermalfoundation:material:262>);
recipes.remove(<thermalfoundation:material:261>);
recipes.remove(<thermalfoundation:material:260>);
recipes.remove(<thermalfoundation:material:259>);
recipes.remove(<thermalfoundation:material:258>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:25>);
recipes.remove(<thermalfoundation:material:24>);

#Wood and Stone Gears Universal Recipe
recipes.addShaped(<ore:gearWood>, [[null, <ore:stickWood>, null],[<ore:stickWood>, null, <ore:stickWood>], [null, <ore:stickWood>, null]]);
recipes.addShaped(<ore:gearStone>, [[<ore:cobblestone>, <ore:stickWood>, <ore:cobblestone>],[<ore:stickWood>, null, <ore:stickWood>], [<ore:cobblestone>, <ore:stickWood>, <ore:cobblestone>]]);

#Tesla Core Lib Gears Removal
<ore:gearWood>.remove(<teslacorelib:gear_wood>);
<ore:gearStone>.remove(<teslacorelib:gear_stone>);
<ore:gearDiamond>.remove(<teslacorelib:gear_diamond>);
mods.jei.JEI.removeAndHide(<teslacorelib:gear_wood>);
mods.jei.JEI.removeAndHide(<teslacorelib:gear_stone>);
mods.jei.JEI.removeAndHide(<teslacorelib:gear_diamond>);

#Ender IO Gears Changes
recipes.remove(<enderio:item_material:10>);
recipes.remove(<enderio:item_material:9>);
<enderio:item_material:11>.displayName = "Infinity Iron Gear";
<enderio:item_material:12>.displayName = "Energized Alloy Gear";
<enderio:item_material:13>.displayName = "Vibrant Alloy Gear";
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:10>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:11>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:12>);
mods.tconstruct.Casting.removeTableRecipe(<enderio:item_material:13>);
recipes.remove(<enderio:item_material:12>);
recipes.remove(<enderio:item_material:13>);
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:12>, <enderio:item_alloy_ingot:1>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:13>, <enderio:item_alloy_ingot:2>, <immersiveengineering:mold:1>, 2400, 4);

#Tech Reborn Plates Changes
mods.jei.JEI.removeAndHide(<techreborn:plates:3>);
mods.jei.JEI.removeAndHide(<techreborn:plates:4>);
mods.jei.JEI.removeAndHide(<techreborn:plates:8>);
mods.jei.JEI.removeAndHide(<techreborn:plates:9>);
mods.jei.JEI.removeAndHide(<techreborn:plates:10>);
