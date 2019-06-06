#Age2.zs
#By MCAdventureCity, Kaperios, CJWilk, Revaeb

#Imports

import mods.prodigytech.rotarygrinder;
import mods.calculator.basic;
import mods.astralsorcery.Altar;
import mods.immersiveengineering.Mixer;
import crafttweaker.oredict.IOreDictEntry; #Not strictly necessary but prevents some issues
import crafttweaker.item.IItemStack;

#Astral Sorcery crystal oredicts
	<ore:astralCrystal>.add(<astralsorcery:itemrockcrystalsimple>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemtunedrockcrystal>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:astralCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());
    <ore:celestialCrystal>.add(<astralsorcery:itemcelestialcrystal>.withEmptyTag());
    <ore:celestialCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());
	<ore:attunedCrystal>.add(<astralsorcery:itemtunedrockcrystal>.withEmptyTag());
	<ore:attunedCrystal>.add(<astralsorcery:itemtunedcelestialcrystal>.withEmptyTag());

#Astral Tome
recipes.remove(<astralsorcery:itemjournal>);
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/journal");
mods.calculator.basic.addRecipe(<astralsorcery:itemcraftingcomponent:5>, <ore:gemAquamarine>, <astralsorcery:itemjournal>);

#Luminous Crafting Table
recipes.remove(<astralsorcery:blockaltar>);
recipes.addShaped("luminousTable", <astralsorcery:blockaltar>, [
	[<aether_legacy:holystone_brick>, <astralsorcery:blockblackmarble:*>, <aether_legacy:holystone_brick>],
	[<ore:stoneMarble>, <artisanworktables:workstation:5>, <ore:stoneMarble>],
	[<aether_legacy:holystone_brick>, <ore:sonarStableStone>, <aether_legacy:holystone_brick>]
]);

#Resonating Wand
recipes.remove(<astralsorcery:itemwand>);
recipes.addShaped("resonatingWand", <astralsorcery:itemwand>, [
	[null, <ore:gemAquamarine>, <ore:gemZanite>],
	[null, <ore:sonarStableStone>, <ore:gemAquamarine>],
	[<aether_legacy:holystone_brick>, null, null]
]);

#Lightwell
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/lightwell", <astralsorcery:blockwell>, 200, 200, [
	<astralsorcery:blockmarble:6>, <ore:astralCrystal>, <astralsorcery:blockmarble:6>, 
	<ore:gemAquamarine>, <aether_legacy:skyroot_bucket:3>, <ore:gemAquamarine>,
	<ore:gemZanite>, <astralsorcery:blockmarble:6>, <ore:gemZanite>
]);

#Linking Tool
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/tool_linking", <astralsorcery:itemlinkingtool>, 400, 200, [
	<ore:stickTreatedWood>, <ore:gemAquamarine>, <ore:astralCrystal>,
	null, <aether_legacy:aether_log>, <ore:gemAquamarine>,
	<aether_legacy:aether_log>, null, <ore:stickTreatedWood>
]);

#AS Grindstone
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/grindstone", <astralsorcery:blockmachine:1>, 200, 200, [
	null, null, null,
	null, <ore:ingotAstralStarmetal>, <ore:stoneMarble>,
	<aether_legacy:skyroot_stick>, <aether_legacy:skyroot_stick>, <astralsorcery:blockinfusedwood>
]);

#Looking Glass
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/handtelescope", <astralsorcery:itemhandtelescope>, 200, 200, [
	null, <ore:stickTreatedWood>, <astralsorcery:itemcraftingcomponent:3>,
	<ore:stickTreatedWood>, <ore:ingotAstralStarmetal>, <ore:stickTreatedWood>,
	<astralsorcery:blockinfusedwood:1>, <ore:stickTreatedWood>, null
]);

#Fosic Resonator
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/skyresonator", <astralsorcery:itemskyresonator>, 300, 200, [
	<ore:dustAstralStarmetal>, <ore:gemAquamarine>, <ore:dustAstralStarmetal>,
	<aether_legacy:holystone_brick>, <liquid:astralsorcery.liquidstarlight>, <aether_legacy:holystone_brick>,
	<ore:dustAstralStarmetal>, <aether_legacy:golden_amber>, <ore:dustAstralStarmetal>
]);

#Spectral Relay
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/attunementrelay", <astralsorcery:blockattunementrelay>, 200, 200, [
	null, null, null,
	<ore:nuggetGold>, <astralsorcery:itemcraftingcomponent:3>, <ore:nuggetGold>,
	<astralsorcery:blockinfusedwood:1>, <aether_legacy:holystone_brick>, <astralsorcery:blockinfusedwood:1>
]);

#Starlight Crafting Altar
mods.astralsorcery.Altar.addDiscoveryAltarRecipe("internal/altar/upgrade_tier2", <astralsorcery:blockaltar:1>, 500, 200, [
	<astralsorcery:blockattunementrelay>, <ore:celestialCrystal>, <astralsorcery:blockattunementrelay>,
	<aether_legacy:holystone_brick>, <liquid:astralsorcery.liquidstarlight>, <aether_legacy:holystone_brick>,
	<astralsorcery:blockmarble:2>, <astralsorcery:blockaltar>, <astralsorcery:blockmarble:2>
]);

#Telescope
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/telescope", <astralsorcery:blockmachine>, 500, 200, [
	null, <astralsorcery:itemhandtelescope>, null,
	<ore:ingotAstralStarmetal>, <astralsorcery:blockinfusedwood:1>, <ore:ingotAstralStarmetal>,
	<ore:stickTreatedWood>, <ore:blockEnchantedGravitite>, <ore:stickTreatedWood>,
	null, null,
	<ore:stickTreatedWood>, <ore:stickTreatedWood>
]);

#Domic Resonator
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/resonator/structure", <astralsorcery:itemskyresonator>.withTag({astralsorcery: {enhanced: 1 as byte, upgrades: [0, 2]}}), 500, 200, [
	<astralsorcery:itemusabledust>, <aether_legacy:ambrosium_shard>, <astralsorcery:itemusabledust>,
	<astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemskyresonator>, <astralsorcery:itemcraftingcomponent:3>,
	<ore:dustAstralStarmetal>, <aether_legacy:ambrosium_shard>, <ore:dustAstralStarmetal>,
	<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>
]);

#Celestial Gateway
mods.astralsorcery.Altar.addAttunementAltarRecipe("internal/altar/gateway", <astralsorcery:blockcelestialgateway>, 600, 200, [
	<astralsorcery:itemusabledust>, <aether_legacy:golden_amber>, <astralsorcery:itemusabledust>,
	<astralsorcery:itemcraftingcomponent:3>, <ore:celestialCrystal>, <astralsorcery:itemcraftingcomponent:3>,
	<aether_legacy:holystone_brick>, <ore:ingotEnrichedGold>, <aether_legacy:holystone_brick>,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
	<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>
]);

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