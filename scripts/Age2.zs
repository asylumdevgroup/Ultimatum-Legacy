#Age2.zs
#By MCAdventureCity, Kaperios

#Imports

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