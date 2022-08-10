#> minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_x
#   UNUSED FUNCTION

# if inner bounds fits in outer bounds, iterate z axes [...] forceload
# reset z bounds back to 1
# add 16 to inner bounds
# teleport to x +16
# reset z coord back to base position of this cell
# unless inner bounds exceeed outer bounds, rerun loop

#   THIS IS UNUSED

execute if score #x_inner_bounds temp <= @s minihilly_dungeoneer_grid.cell.size.x run function minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_z
scoreboard players set #z_inner_bounds temp 1
scoreboard players operation #x_inner_bounds temp += #16 const
execute at @s run tp @s ~16 ~ ~
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.z
execute unless score #x_inner_bounds temp > @s minihilly_dungeoneer_grid.cell.size.x run function minihilly_dungeoneer_grid:gen/loop/grid_manager_load_chunk/iterate_x