#> minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/prep
#   UNUSED FUNCTION

#   THIS IS UNUSED

#region declarations
#>
#   temporary copy for calculations
#@within
#   minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_x
#define score_holder #x_inner_bounds

#>
#   temporary copy for calculations
#@within
#   minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_z
#define score_holder #z_inner_bounds
#endregion

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/prep"}]}

scoreboard players set #x_inner_bounds temp 1
scoreboard players set #z_inner_bounds temp 1

# begin chunkloading loop (this can be very resource intensive!)
#   todo: add tickbuster integration for this loop
function minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_x

# reset x pos
execute store result entity @s Pos[0] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.y
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.z
execute positioned as @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["minihilly_dungeoneer_grid.debug.armor_stand","test"],NoGravity:1b,CustomName:'{"text":"prep over"}',CustomNameVisible:1b}

scoreboard players reset #x_inner_bounds temp
scoreboard players reset #z_inner_bounds temp