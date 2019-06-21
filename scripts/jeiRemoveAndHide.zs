#jeiRemoveAndHide.zs
#By Kaperios

#Imports
import mods.jei.JEI.removeAndHide as removeAndHide;
import crafttweaker.item.IItemStack;

#Array
var removal = [
    <minecraft:bedrock>,
    <minecraft:monster_egg>,
    <minecraft:anvil:1>,
    <minecraft:anvil:2>,
    <minecraft:chorus_plant>,
    <minecraft:spawn_egg>,
    <minecraft:firework_charge>,
    <minecraft:mob_spawner>,
    <minecraft:farmland>,
    <minecraft:command_block>,
    <minecraft:barrier>,
    <minecraft:grass_path>,
    <minecraft:repeating_command_block>,
    <minecraft:chain_command_block>,
    <minecraft:structure_void>,
    <minecraft:structure_block>,
    <minecraft:written_book>,
    <minecraft:fireworks>,
    <minecraft:command_block_minecart>,
    <minecraft:knowledge_book>,
    <actuallyadditions:magnet_ring_bauble>.withTag({Energy: 200000}),
    <actuallyadditions:potion_ring_advanced_bauble>.withTag({Blaze: 800}),
    <actuallyadditions:battery_bauble>.withTag({Energy: 200000}),
    <actuallyadditions:battery_double_bauble>.withTag({Energy: 350000}),
    <actuallyadditions:battery_triple_bauble>.withTag({Energy: 600000}),
    <actuallyadditions:battery_quadruple_bauble>.withTag({Energy: 1000000}),
    <actuallyadditions:battery_quintuple_bauble>.withTag({Energy: 2000000}),
    <actuallyadditions:item_growth_ring>.withTag({Energy: 1000000}),
    <actuallyadditions:item_suction_ring>.withTag({Energy: 200000}),
    <actuallyadditions:item_water_removal_ring>.withTag({Energy: 800000}),
    <actuallyadditions:item_tele_staff>.withTag({Energy: 250000}),
    <actuallyadditions:item_drill>.withTag({Energy: 250000}),
    <actuallyadditions:item_battery>.withTag({Energy: 200000}),
    <actuallyadditions:item_battery_double>.withTag({Energy: 350000}),
    <actuallyadditions:item_battery_triple>.withTag({Energy: 600000}),
    <actuallyadditions:item_battery_quadruple>.withTag({Energy: 1000000}),
    <actuallyadditions:item_battery_quintuple>.withTag({Energy: 2000000}),
    <actuallyadditions:item_potion_ring>.withTag({Blaze: 800}),
    <actuallyadditions:item_potion_ring_advanced>.withTag({Blaze: 800}),
    <aether_legacy:berry_bush_stem>,
    <aether_legacy:locked_dungeon_block>,
    <aether_legacy:dungeon_trap>,
    <aether_legacy:aether_portal>,
    <aether_legacy:developer_stick>,
    <appliedenergistics2:crystal_seed>.withTag({progress: 800}),
    <appliedenergistics2:crystal_seed>.withTag({progress: 1600}),
    <astralsorcery:blockportalnode>,
    <baubles:ring>,
    <bloodmagic:upgrade_trainer>.withTag({}),
    <bloodmagic:soul_gem>.withTag({souls: 64.0}),
    <bloodmagic:soul_gem:1>.withTag({souls: 256.0}),
    <bloodmagic:soul_gem:2>.withTag({souls: 1024.0}),
    <bloodmagic:soul_gem:3>.withTag({souls: 4096.0}),
    <ceramics:clay_bucket>.withTag({}),
	<silentgear:template_katana>,
	<silentgear:template_machete>,
	<silentgear:template_hammer>,
	<silentgear:template_excavator>,
	<silentgear:template_mattock>,
	<silentgear:template_sickle>,
	<silentgear:template_bow>,
	<silentgear:template_dagger>
] as IItemStack[];

#Removal and Hiding
for item in removal {
    removeAndHide(item, true);
}