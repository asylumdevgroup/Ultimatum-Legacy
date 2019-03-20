#Age5.zs
#By MCAdventureCity

#Imports



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