#Age5.zs
#By MCAdventureCity, CJWilk

#Imports


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

#Basic Capacitor
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped("basicCapacitor", <enderio:item_basic_capacitor>, [
    [<ore:nuggetGold>, <pneumaticcraft:plastic:7>, <ore:nuggetGold>], 
    [<enderio:item_capacitor_grainy>, <ore:ingotCopper>, <enderio:item_capacitor_grainy>], 
    [<ore:nuggetGold>, <pneumaticcraft:plastic:7>, <ore:nuggetGold>]
]);

#Industrial Machine Chassis
recipes.remove(<enderio:item_material:1>);
recipes.addShaped("machineChassis", <enderio:item_material:1>, [
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>], 
    [<minecraft:iron_bars>, <enderio:item_basic_capacitor>, <minecraft:iron_bars>], 
    [<ore:plateIron>, <minecraft:iron_bars>, <ore:plateIron>]
]);