#IngotCreation.zs
#By MCAdventureCity

#Arrays
var lightChunks = [
    <materialpart:iron:chunk>,
    <materialpart:gold:chunk>,
    <materialpart:copper:chunk>,
    <materialpart:tin:chunk>,
    <materialpart:silver:chunk>,
    <materialpart:lead:chunk>,
	<materialpart:aluminum:chunk>,
	<materialpart:nickel:chunk>
];
var lightIngots = [
    <materialpart:iron:ingot>,
    <materialpart:gold:ingot>,
    <materialpart:copper:ingot>,
    <materialpart:tin:ingot>,
    <materialpart:silver:ingot>,
    <materialpart:lead:ingot>,
	<materialpart:aluminum:ingot>,
	<materialpart:nickel:ingot>
];
#Light Metal Chunks to Ingots
for i, item in lightIngots {
	mods.immersiveengineering.AlloySmelter.addRecipe(item, lightChunks[i], <ore:sand>, 2000); #Iron
}