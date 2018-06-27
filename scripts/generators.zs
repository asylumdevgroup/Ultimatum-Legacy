var pinkgen = <extrautils2:machine:0>;
var bioreactor = <actuallyadditions:block_bio_reactor>;
var furnacegeneratorgad = <gadgetrymachines:furnace_gen>;
var pinksbricks = <betterwithaddons:bricks_stained:6>;
var yellowsbricks = <betterwithaddons:bricks_stained:4>;
var limesbricks = <betterwithaddons:bricks_stained:5>;
var cyansbricks = <betterwithaddons:bricks_stained:9>;
var furnace = <minecraft:furnace>;
var steelingot = <ore:ingotSteel>;
var redmetal = <gadgetrycore:redmetal_ingot>;

recipes.remove(pinkgen);
recipes.addShaped(pinkgen, [[pinksbricks, pinksbricks, pinksbricks], [pinksbricks, furnace, pinksbricks], [steelingot, redmetal, steelingot]]);
recipes.remove(bioreactor);
recipes.addShaped(bioreactor, [[yellowsbricks, limesbricks, yellowsbricks], [limesbricks, furnace, limesbricks], [steelingot, redmetal, steelingot]]);
recipes.remove(furnacegeneratorgad);
recipes.addShaped(furnacegeneratorgad, [[cyansbricks, cyansbricks, cyansbricks], [cyansbricks, furnace, cyansbricks], [steelingot, redmetal, steelingot]]);
