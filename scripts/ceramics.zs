#Ceramics.zs
#By CJWilk

#No Smelting Clay Bucket in Vanilla Furnace (Force Alloy Kiln)
furnace.remove(<ceramics:clay_bucket>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:clay_bucket>, <ceramics:unfired_clay>, null, 2000);

#Hide Duplicate Unfired Clay Bucket
mods.jei.JEI.hide(<ceramics:clay_bucket_block>);

#Shears in Kiln
furnace.remove(<ceramics:clay_shears>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:clay_shears>, <ceramics:unfired_clay:1>, null, 2000);

#Porcelain Brick in Kiln
furnace.remove(<ceramics:unfired_clay:5>);
mods.immersiveengineering.AlloySmelter.addRecipe(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>, null, 2000);