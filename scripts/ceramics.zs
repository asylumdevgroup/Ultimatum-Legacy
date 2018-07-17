#ceramics.zs
#By CJWilk

#No Smelt Clay Bucket in Vanilla Furnace (Force Coke Oven)
furnace.remove(<ceramics:clay_bucket>);
mods.immersiveengineering.CokeOven.addRecipe(<ceramics:clay_bucket>, 0, <ceramics:unfired_clay>, 2000);

#Hide Duplicate Unfired Clay Bucket
mods.jei.JEI.hide(<ceramics:clay_bucket_block>);

#Shears in Coke Oven
furnace.remove(<ceramics:clay_shears>);
mods.immersiveengineering.CokeOven.addRecipe(<ceramics:clay_shears>, 0, <ceramics:unfired_clay:1>, 2000);

#Porcelain Brick in Coke Oven
furnace.remove(<ceramics:unfired_clay:5>);
mods.immersiveengineering.CokeOven.addRecipe(<ceramics:unfired_clay:5>, 0, <ceramics:unfired_clay:4>, 2000);