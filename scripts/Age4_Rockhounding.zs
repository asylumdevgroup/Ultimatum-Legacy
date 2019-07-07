#Age4_Rockhounding.zs
#By Revaeb
#Every single Rockhounding machine's controller/main block has been minimally changed to include an EnderIO Chassis.
#Isolated to avoid cluttering Age4.zs

#Tier 1(Industrial Chassis)
#Slurry Pond
recipes.remove(<rockhounding_chemistry:machines_b>);
recipes.addShaped(<rockhounding_chemistry:machines_b>, [
	[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:slurry_agitator>, <rockhounding_chemistry:misc_blocks_a>],
	[<rockhounding_chemistry:misc_items:3>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>]
]);
#Transposer
recipes.remove(<rockhounding_chemistry:machines_d:11>);
recipes.addShaped(<rockhounding_chemistry:machines_d:11>, [
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:5>]
]);
#Lab Blender Controller
recipes.remove(<rockhounding_chemistry:machines_a:9>);
recipes.addShaped(<rockhounding_chemistry:machines_a:9>, [
	[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:6>, null],
	[<rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:4>, null],
	[<rockhounding_chemistry:misc_items:5>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:5>]
]);
#Heat Exchanger
recipes.remove(<rockhounding_chemistry:machines_b:11>);
recipes.addShaped(<rockhounding_chemistry:machines_b:11>, [
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:8>, <rockhounding_chemistry:misc_items:9>, <rockhounding_chemistry:misc_items:8>],
	[<rockhounding_chemistry:misc_items:5>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:5>]
]);
#Gas Condenser
recipes.remove(<rockhounding_chemistry:machines_c:1>);
recipes.addShaped(<rockhounding_chemistry:machines_c:1>, [
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_items:8>, <rockhounding_chemistry:machines_b:10>.withEmptyTag(), <rockhounding_chemistry:misc_items:8>],
	[<rockhounding_chemistry:misc_items:3>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:3>]
]);
#(Gas) Expansion Chamber
recipes.remove(<rockhounding_chemistry:machines_a:15>);
recipes.addShaped(<rockhounding_chemistry:machines_a:15>, [
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_items:8>, <rockhounding_chemistry:machines_b:13>.withEmptyTag(), <rockhounding_chemistry:misc_items:8>],
	[<rockhounding_chemistry:misc_items:3>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:3>]
]);
#Catalyst Regenerator
recipes.remove(<rockhounding_chemistry:machines_e:3>);
recipes.addShaped(<rockhounding_chemistry:machines_e:3>, [
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:9>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_core:gas_turbine>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_blocks_a>, <ore:itemMachineChassi>, <rockhounding_chemistry:misc_blocks_a>]
]);
#Air Compressor
#Also requires a PC air compressor because thematics and because PC hasn't contributed much but the plastic yet
recipes.remove(<rockhounding_chemistry:machines_b:10>);
recipes.addShaped(<rockhounding_chemistry:machines_b:10>, [
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_items:3>],
	[<ore:itemMachineChassi>, <rockhounding_chemistry:misc_items:9>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <pneumaticcraft:air_compressor>, <rockhounding_chemistry:misc_items:5>]
]);

#Tier 2(Soul Chassis)
#Sizer Controller
recipes.remove(<rockhounding_chemistry:machines_a>);
recipes.addShaped(<rockhounding_chemistry:machines_a>, [
	[<rockhounding_chemistry:misc_items:5>, <ore:hopper>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:5>],
	[<ore:stone>, <ore:itemSoulMachineChassi>, <ore:stone>]
]);
#Electrochemical CSTR
recipes.remove(<rockhounding_chemistry:machines_e:7>);
recipes.addShaped(<rockhounding_chemistry:machines_e:7>, [
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:machines_a:4>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:8>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_items:8>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:slurry_agitator>, <rockhounding_chemistry:misc_items:5>]
]);
#Lab Oven Reactor
recipes.remove(<rockhounding_chemistry:machines_a:6>);
recipes.addShaped(<rockhounding_chemistry:machines_a:6>, [
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:5>]
]);
#Precipitation Chamber
recipes.remove(<rockhounding_chemistry:machines_e:11>);
recipes.addShaped(<rockhounding_chemistry:machines_e:11>, [
	[<rockhounding_chemistry:misc_items:5>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:5>]
]);
#Gasifier Burner
recipes.remove(<rockhounding_chemistry:machines_b:4>);
recipes.addShaped(<rockhounding_chemistry:machines_b:4>, [
	[<rockhounding_chemistry:misc_items:3>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_items:7>, <minecraft:furnace>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_blocks_a>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_blocks_a>]
]);
#Gas Purifier
recipes.remove(<rockhounding_chemistry:machines_b:5>);
recipes.addShaped(<rockhounding_chemistry:machines_b:5>, [
	[<rockhounding_chemistry:misc_items:3>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:3>, <minecraft:piston>, <rockhounding_chemistry:misc_items:3>]
]);
#Retention Controller
recipes.remove(<rockhounding_chemistry:machines_b:6>);
recipes.addShaped(<rockhounding_chemistry:machines_b:6>, [
	[<rockhounding_chemistry:misc_items:5>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:5>]
]);
#Metal Alloyer
recipes.remove(<rockhounding_chemistry:machines_d>);
recipes.addShaped(<rockhounding_chemistry:machines_d>, [
	[<rockhounding_chemistry:misc_blocks_a>, <ore:hopper>, <rockhounding_chemistry:misc_blocks_a>],
	[<rockhounding_chemistry:misc_blocks_a:3>, <ore:itemSoulMachineChassi>, <rockhounding_chemistry:misc_blocks_a:3>],
	[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_blocks_a>]
]);

#Tier 3(End Steel Chassis)
#Leaching Controller
recipes.remove(<rockhounding_chemistry:machines_c:3>);
recipes.addShaped(<rockhounding_chemistry:machines_c:3>, [
	[<rockhounding_chemistry:misc_items:5>, <ore:itemEndSteelMachineChassi>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:5>]
]);
#GAN Controller
recipes.remove(<rockhounding_chemistry:machines_c>);
recipes.addShaped(<rockhounding_chemistry:machines_c>, [
	[<rockhounding_chemistry:misc_items:5>, <minecraft:comparator>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:1>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_items:1>],
	[<rockhounding_chemistry:misc_blocks_a>, <ore:itemEndSteelMachineChassi>, <rockhounding_chemistry:misc_blocks_a>]
]);
#Crystal Pulling Crucible
recipes.remove(<rockhounding_chemistry:machines_d:8>);
recipes.addShaped(<rockhounding_chemistry:machines_d:8>, [
	[<rockhounding_chemistry:misc_items:5>, <ore:itemEndSteelMachineChassi>, <rockhounding_chemistry:misc_items:5>],
	[<ore:blockQuartz>, <rockhounding_chemistry:misc_items:10>, <ore:blockQuartz>],
	[<rockhounding_chemistry:misc_items:8>, <ore:blockQuartz>, <rockhounding_chemistry:misc_items:8>]
]);

#Tier 4(Enhanced Chassis)
#Reforming Controller
recipes.remove(<rockhounding_chemistry:machines_c:13>);
recipes.addShaped(<rockhounding_chemistry:machines_c:13>, [
	[<rockhounding_chemistry:misc_items:8>, <rockhounding_chemistry:misc_items:11>, <rockhounding_chemistry:misc_items:8>],
	[<rockhounding_chemistry:misc_items:3>, <ore:itemEnhancedMachineChassi>, <rockhounding_chemistry:misc_items:3>],
	[<rockhounding_chemistry:misc_blocks_a>, <rockhounding_chemistry:misc_items:10>, <rockhounding_chemistry:misc_blocks_a>]
]);
#Extraction Controller
recipes.remove(<rockhounding_chemistry:machines_c:7>);
recipes.addShaped(<rockhounding_chemistry:machines_c:7>, [
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_items:11>, <rockhounding_chemistry:misc_items:5>],
	[<rockhounding_chemistry:misc_items:7>, <ore:itemEnhancedMachineChassi>, <rockhounding_chemistry:misc_items:7>],
	[<rockhounding_chemistry:misc_items:5>, <rockhounding_chemistry:misc_blocks_a:3>, <rockhounding_chemistry:misc_items:5>]
]);