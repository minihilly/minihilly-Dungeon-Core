#> minihilly_gen_grid:gen/loop_for_no_uuid
#@within minihilly_gen_grid:gen/loop

tellraw @a[tag=debug,scores={debugLogPriority=300..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:gen/loop_for_no_uuid"}]}

execute as @e[type=marker,tag=minihilly_gen_grid.grid_manager] at @s if score @s minihilly_gen_grid.cell.queue matches 1.. run function minihilly_gen_grid:gen/loop/grid_manager