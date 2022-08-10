#> minihilly_dungeoneer_grid:destroy/grid_without_uuid
#@within
#   minihilly_dungeoneer_grid:destroy/grid_to_destroy

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:destroy/grid_without_uuid"}]}

# grid manager
execute as @e[tag=minihilly_dungeoneer_grid.grid_manager] if score @s minihilly_dungeoneer_grid.id = $grid_to_destroy minihilly_dungeoneer_grid.config run function minihilly_dungeoneer_grid:destroy/teardown