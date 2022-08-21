#> minihilly_gen_grid:gen/loop/grid_manager
#@context Grid Manager
#@within
#   minihilly_gen_grid:gen/loop_for_uuid
#   minihilly_gen_grid:gen/loop_for_no_uuid

tellraw @a[tag=debug,scores={debugLogPriority=250..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:gen/grid_manager"}]}

# teleport to position
function minihilly_gen_grid:gen/loop/grid_manager/teleport
# summon cell marker (and decrease cell count as quota met)
execute if entity @s[tag=!minihilly_gen_grid.forceload.remove] run function minihilly_gen_grid:gen/loop/grid_manager/summon_cell_marker
# destroy chunk
execute if entity @s[tag=minihilly_gen_grid.forceload.remove] run function minihilly_gen_grid:gen/loop/grid_manager/destroy_cell_marker
function minihilly_gen_grid:gen/loop/calculate_next_cell

# decrease values of cell gen queue
scoreboard players remove $total_cells minihilly_gen_grid.config 1
scoreboard players remove @s minihilly_gen_grid.cell.queue 1

# loop end (single execution at very end of loop)
execute if score @s minihilly_gen_grid.cell.queue matches 0 run function minihilly_gen_grid:gen/loop_end


# teleport to position
#       function minihilly_gen_grid:gen/loop/grid_manager_teleport
# forceload position
#   todo: make forceloading optional (i.e. add conditional in line below later)
#       function minihilly_gen_grid:gen/loop/grid_manager_load_chunk/prep
#force_load tag not implemented yet-> | execute if entity @s[tag=force_load] if score @s minihilly_gen_grid.cell.size.x matches ..16 if score @s minihilly_gen_grid.cell.size.z matches ..16 run forceload ~ ~
# summon cell marker (and decrease cell count as quota met)
#       function minihilly_gen_grid:gen/loop/summon_cell_marker
# calculate values for ready next iteration
#       function minihilly_gen_grid:gen/loop/calculate_next_cell

#disabled during testing | scoreboard players reset @s minihilly_gen_grid.length.x.step
#disabled during testing | scoreboard players reset @s minihilly_gen_grid.length.z.step