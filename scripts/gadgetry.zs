var gadgalloy = <gadgetrycore:alloy_furnace>;
var redsbricks = <betterwithaddons:bricks_stained:14>;
var irongear = <ore:gearIron>;
var ironplate = <ore:plateIron>;
var tripcobble = <extrautils2:compressedcobblestone:2>;

recipes.remove(gadgalloy);
recipes.addShaped(gadgalloy, [[redsbricks, redsbricks, redsbricks], [redsbricks, irongear, redsbricks], [ironplate, tripcobble, ironplate]]);