#> minihilly_dungeoneer_grid:_debug/expose_cells
#   Exposes cells so the player can view them in-game whilst debugging and troubleshooting issues
#@user

execute at @e[type=marker,tag=minihilly_dungeoneer_grid.cell,tag=!minihilly_dungeoneer_grid.chunk] run summon armor_stand ~ ~ ~ {Tags:["minihilly_dungeoneer_grid.debug.armor_stand","minihilly_dungeoneer_grid.cell","minihilly_dungeoneer_grid.debug.cell","minihilly_dungeoneer_grid.cell.temp"],CustomName:'{"text":"grid cell"}',CustomNameVisible:1b,NoGravity:1b}
execute at @e[type=marker,tag=minihilly_dungeoneer_grid.chunk] run summon armor_stand ~ ~ ~ {Tags:["minihilly_dungeoneer_grid.debug.armor_stand","minihilly_dungeoneer_grid.cell","minihilly_dungeoneer_grid.debug.chunk","minihilly_dungeoneer_grid.cell.temp"],Small:1b,CustomName:'{"text":"chunk cell"}',CustomNameVisible:1b,NoGravity:1b}