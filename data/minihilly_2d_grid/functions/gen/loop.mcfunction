#> minihilly_2d_grid:gen/loop
#@within
#   minihilly_2d_grid:handles/tickbuster/loop

tellraw @a[tag=debug,scores={debugLogPriority=270..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:gen/loop"}]}

execute if score $target_grid_id minihilly_grid.config <= #uuids_available minihilly_grid.config run function minihilly_2d_grid:gen/loop_for_uuid
execute if score $target_grid_id minihilly_grid.config > #uuids_available minihilly_grid.config run function minihilly_2d_grid:gen/loop_for_no_uuid