#thermal.zs
#By CJWilk

#No Coins + Coin Augment
mods.jei.JEI.removeAndHide(<thermalfoundation:coin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:1>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:64>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:65>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:66>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:67>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:68>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:69>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:70>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:71>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:72>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:96>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:97>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:98>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:99>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:100>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:101>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:102>);
mods.jei.JEI.removeAndHide(<thermalfoundation:coin:103>);
mods.jei.JEI.removeAndHide(<thermalexpansion:augment:336>);

#No Extra Full/Empty Uncraftable Powercells
mods.jei.JEI.hide(<thermalexpansion:frame:148>);
mods.jei.JEI.hide(<thermalexpansion:frame:147>);
mods.jei.JEI.hide(<thermalexpansion:frame:129>);
mods.jei.JEI.hide(<thermalexpansion:frame:130>);
mods.jei.JEI.hide(<thermalexpansion:frame:131>);
mods.jei.JEI.hide(<thermalexpansion:frame:132>);
mods.jei.JEI.hide(<thermalexpansion:frame:146>);

#No Coal Coke (Use IEs)
mods.jei.JEI.removeAndHide(<thermalfoundation:material:802>);
mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource:1>);

#No Block of Charcoal (Use AAs)
mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource>);

#Remove Strongbox
mods.jei.JEI.removeAndHide(<thermalexpansion:strongbox>.withTag({Facing: 3 as byte, Level: 0 as byte}));

#Remove Horse Armor
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_invar>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_bronze>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_constantan>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_copper>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_tin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_silver>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_lead>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_aluminum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_nickel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_platinum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_steel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:horse_armor_electrum>);

#Remove Shields
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_diamond>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_iron>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_constantan>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_bronze>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_invar>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_gold>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_tin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_copper>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_electrum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_steel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_platinum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_nickel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_aluminum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_lead>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.shield_silver>);

#Remove Sickles (Use ExU2)
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_silver>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_tin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_copper>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_invar>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_bronze>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_constantan>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_diamond>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_iron>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_gold>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_electrum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_steel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_platinum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_nickel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_aluminum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.sickle_lead>);

#Remove Fishing Rods
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_steel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_platinum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_nickel>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_electrum>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_invar>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_bronze>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_constantan>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_diamond>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_iron>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_gold>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_copper>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_tin>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_silver>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_lead>);
mods.jei.JEI.removeAndHide(<thermalfoundation:tool.fishing_rod_aluminum>);

#Remove Shears


#Remove Hammers