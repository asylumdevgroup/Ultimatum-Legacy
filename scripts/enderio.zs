#EnderIO.zs
#By CJWilk

#No Alloys in TiC Smeltery
mods.tconstruct.Alloy.removeRecipe(<liquid:energetic_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:vibrant_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:conductive_iron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pulsating_iron>);

#No Simple Machines + Chassis (-Stirling Generator)
mods.jei.JEI.removeAndHide(<enderio:block_simple_alloy_smelter>);
mods.jei.JEI.removeAndHide(<enderio:item_material>);
mods.jei.JEI.removeAndHide(<enderio:item_material:69>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_sag_mill>);
mods.jei.JEI.removeAndHide(<enderio:block_simple_crafter>);
mods.jei.JEI.removeAndHide(<enderio:block_solar_panel>);

#No Duplicate Dusts
<ore:dustCopper>.remove(<enderio:item_material:26>);
<ore:dustTin>.remove(<enderio:item_material:27>);
<ore:dustLapis>.remove(<enderio:item_material:32>);
<ore:dustNetherQuartz>.remove(<enderio:item_material:33>); 
mods.jei.JEI.hide(<enderio:item_material:26>);
mods.jei.JEI.hide(<enderio:item_material:27>);
mods.jei.JEI.hide(<enderio:item_material:32>);
mods.jei.JEI.hide(<enderio:item_material:33>);

#No Smelting Binder Composite (Use ___)
furnace.remove(<enderio:item_material:4>);
