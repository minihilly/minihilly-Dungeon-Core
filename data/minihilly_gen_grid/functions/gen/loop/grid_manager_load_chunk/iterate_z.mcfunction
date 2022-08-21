#> minihilly_gen_grid:gen/loop/grid_manager_load_chunk/iterate_z
#   UNUSED FUNCTION
#@within
#   minihilly_gen_grid:gen/loop/grid_manager_load_chunk/iterate_x
#   minihilly_gen_grid:gen/loop/grid_manager_load_chunk/iterate_z

# if within outer bounds, forceload
# add 16 to inner bounds
# teleport to z +16
# unless inner bounds exceeed outer bounds, rerun loop

#   THIS IS UNUSED

execute if score #z_inner_bounds temp <= @s minihilly_gen_grid.cell.size.z positioned as @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["minihilly_gen_grid.debug.armor_stand","test"],NoGravity:1b,CustomName:'{"text":"iterate_z"}',CustomNameVisible:1b}
scoreboard players operation #z_inner_bounds temp += #16 const
execute at @s run tp ~ ~ ~16
execute unless score #z_inner_bounds temp > @s minihilly_gen_grid.cell.size.z run function minihilly_gen_grid:gen/loop/grid_manager_load_chunk/iterate_z