#Age2.zs
#By MCAdventureCity, Kaperios

#Imports

import mods.prodigytech.rotarygrinder;

#Add Coal Dust to Rotary Grinder
mods.prodigytech.rotarygrinder.addRecipe(<minecraft:coal>, <thermalfoundation:material:768>);

#Raw Zorrasteel
recipes.remove(<prodigytech:zorrasteel_raw>);
recipes.addShaped("rawZorrasteel", <prodigytech:zorrasteel_raw>, [
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <ore:ingotSteel>, <prodigytech:zorra_leaf>], 
    [<prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>, <prodigytech:zorra_leaf>]
]);
#Nether Furnace (Natura)
recipes.remove(<natura:netherrack_furnace>);
recipes.addShaped("netherFurnace", <natura:netherrack_furnace>, [
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>], 
    [<minecraft:netherrack>, <minecraft:furnace>, <minecraft:netherrack>], 
    [<minecraft:netherbrick>, <minecraft:netherrack>, <minecraft:netherbrick>]
]);
#Solid Fuel Aeroheater
recipes.remove(<prodigytech:solid_fuel_aeroheater>);
recipes.addShaped("solidAeroheater", <prodigytech:solid_fuel_aeroheater>, [
    [<ore:ingotFerramic>, null, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, <ore:ingotFerramic>, <ore:ingotSteel>]
]);
#Magmatic Aeroheater
recipes.remove(<prodigytech:magmatic_aeroheater>);
recipes.addShaped("magmaticAeroheater", <prodigytech:magmatic_aeroheater>, [
    [<ore:ingotFerramic>, null, <ore:ingotFerramic>], 
    [<ore:ingotSteel>, null, <ore:ingotSteel>], 
    [<ceramics:clay_hard:5>, <ore:ingotSteel>, <ceramics:clay_hard:5>]
]);
#Incinerator
recipes.remove(<prodigytech:incinerator>);
recipes.addShaped("incinerator", <prodigytech:incinerator>, [
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:flint_and_steel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <minecraft:dirt>, <ore:ingotFerramic>]
]);
#Rotary Grinder
recipes.remove(<prodigytech:rotary_grinder>);
recipes.addShaped("incinerator", <prodigytech:rotary_grinder>, [
    [<ore:itemFlint>, <ore:itemFlint>, <ore:itemFlint>], 
    [<ore:ingotFerramic>, <ore:gearFerramic>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);
#Blower Furnace
recipes.remove(<prodigytech:blower_furnace>);
recipes.addShaped("incinerator", <prodigytech:incinerator>, [
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <natura:netherrack_furnace>, <ore:ingotFerramic>], 
    [<ore:ingotFerramic>, <ore:ingotSteel>, <ore:ingotFerramic>]
]);