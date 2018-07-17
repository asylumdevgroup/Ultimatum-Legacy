#gadgetry.zs
#By CJWilk

#No Ore-Dict for Silicon
<ore:itemSilicon>.remove(<gadgetrycore:silicon>);
<ore:matSilicon>.remove(<gadgetrycore:silicon>);
<ore:silicon>.remove(<gadgetrycore:silicon>);

#Rename Silicon
<gadgetrycore:silicon>.displayName = "Voltaic Panel";

#Analog Circuit Recipe Change
recipes.remove(<gadgetrymachines:circuit>);
recipes.addShaped(<gadgetrymachines:circuit>, [[<ore:nuggetGold>, <ore:nuggetRedmetal>, <ore:nuggetGold>],[<ore:nuggetRedmetal>, <ore:ingotSteel>, <ore:nuggetRedmetal>], [<ore:nuggetGold>, <ore:nuggetRedmetal>, <ore:nuggetGold>]]);

#Alloy Furnace
recipes.remove(<gadgetrycore:alloy_furnace>);
recipes.addShaped(<gadgetrycore:alloy_furnace>, [[<calculator:reinforcedironingot>, <calculator:reinforcedironingot>, <calculator:reinforcedironingot>],[<immersiveengineering:stone_decoration:10>, <minecraft:furnace>, <immersiveengineering:stone_decoration:10>], [<immersiveengineering:stone_decoration:10>, <minecraft:furnace>, <immersiveengineering:stone_decoration:10>]]);

#Pipes
recipes.remove(<gadgetrytransmission:item_pipe>);
recipes.remove(<gadgetrytransmission:fluid_pipe>);
recipes.remove(<gadgetrytransmission:energy_cable>);
recipes.addShaped(<gadgetrytransmission:fluid_pipe> * 12, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[<ore:ingotIron>, null, <ore:ingotIron>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(<gadgetrytransmission:item_pipe> * 12, [[<ore:ingotSteel>, null, <ore:ingotSteel>],[<ore:ingotSteel>, null, <ore:ingotSteel>], [<ore:ingotSteel>, null, <ore:ingotSteel>]]);
recipes.addShaped(<gadgetrytransmission:energy_cable> * 12, [[<ore:ingotRedmetal>, null, <ore:ingotRedmetal>],[<ore:ingotRedmetal>, null, <ore:ingotRedmetal>], [<ore:ingotRedmetal>, null, <ore:ingotRedmetal>]]);

#Everything Else Being Hidden/Removed
mods.jei.JEI.removeAndHide(<gadgetrymachines:pump>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:grinder>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:placer>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:activator>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:fluid_intake>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:fluid_placer>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:super_breaker>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:super_placer>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:super_activator>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:sprinkler>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:ranged_collector>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:oil_prospector>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:biomass>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:furnace_gen>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:energy_cell>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:oil_well>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:combustion_gen>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:distiller>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:powered_furnace>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:assembly_press>);
mods.jei.JEI.removeAndHide(<gadgetrymachines:dust_coal>);