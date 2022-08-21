#> minihilly_gen_grid:_debug/expose_cells
#   Exposes cells so the player can view them in-game whilst debugging and troubleshooting issues
#@user

execute at @e[type=marker,tag=minihilly_gen_grid.cell,tag=!minihilly_gen_grid.chunk] run summon armor_stand ~ ~ ~ {Tags:["minihilly_gen_grid.debug.armor_stand","minihilly_gen_grid.cell","minihilly_gen_grid.debug.cell","minihilly_gen_grid.cell.temp"],CustomName:'{"text":"grid cell"}',CustomNameVisible:1b,NoGravity:1b}
execute at @e[type=marker,tag=minihilly_gen_grid.chunk] run summon armor_stand ~ ~ ~ {Tags:["minihilly_gen_grid.debug.armor_stand","minihilly_gen_grid.cell","minihilly_gen_grid.debug.chunk","minihilly_gen_grid.cell.temp"],Small:1b,CustomName:'{"text":"chunk cell"}',CustomNameVisible:1b,NoGravity:1b}