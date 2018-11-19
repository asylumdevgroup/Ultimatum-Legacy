#ArtisanWorktables.zs
#By CJWilk

#Mason's Worktable
recipes.addShaped(<artisanworktables:worktable:2>, [[<minecraft:brick>, <ore:cobblestone>, <minecraft:brick>],[<ore:cobblestone>, <ore:slabCobblestone>, <ore:cobblestone>], [<minecraft:cobblestone_wall>, null, <minecraft:cobblestone_wall>]]);

#Mason's Workstation
recipes.addShaped(<artisanworktables:workstation:2>, [[<minecraft:brick>, <ore:stone>, <minecraft:brick>],[<ore:ingotCopper>, <artisanworktables:worktable:2>, <ore:ingotCopper>], [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);

#Mason's Workshop
//add updated recipe