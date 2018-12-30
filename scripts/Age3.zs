#Age3.zs
#By MCAdventureCity

#Imports



#Power Cube
recipes.remove(<calculator:powercube>);
recipes.addShaped("powerCube", <calculator:powercube>, [
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>], 
    [<ore:cobblestone>, <prodigytech:energion_battery_double>, <ore:cobblestone>], 
    [<ore:ingotZorrasteel>, <ore:cobblestone>, <ore:ingotZorrasteel>]
]);
#Hand-Cranked Generator
recipes.remove(<calculator:handcrankedgenerator>);
recipes.addShaped("handCrankedGenerator", <calculator:handcrankedgenerator>, [
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>], 
    [<immersiveengineering:treated_wood>, <calculator:powercube>, <immersiveengineering:treated_wood>], 
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
]);