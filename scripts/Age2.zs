#Age2.zs
#By MCAdventureCity, Kaperios, CJWilk

#Imports

import mods.prodigytech.rotarygrinder;
import crafttweaker.item.IItemStack;


#Raw Zorrasteel
recipes.remove(<prodigytech:zorrasteel_raw>);
recipes.addShaped("rawZorrasteel", <prodigytech:zorrasteel_raw>, [
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <ore:ingotSteel>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>]
]);

#Zorrasteel Casing (End of Age 2)
recipes.addShaped("zorrasteelCasing", <contenttweaker:zorrasteel_casing>, [
    [<ore:ingotZorrasteel>, <ore:ingotZorrasteel>, <ore:ingotZorrasteel>], 
    [<ore:ingotZorrasteel>, <contenttweaker:treated_casing>, <ore:ingotZorrasteel>], 
    [<ore:ingotZorrasteel>, <ore:ingotZorrasteel>, <ore:ingotZorrasteel>]
]);