#> minihilly_gen_grid:destroy/grid_without_uuid
#@within
#   minihilly_gen_grid:destroy/grid_to_destroy

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:destroy/grid_without_uuid"}]}

# grid manager
execute as @e[tag=minihilly_gen_grid.grid_manager] if score @s minihilly_gen_grid.id = $grid_to_destroy minihilly_gen_grid.config run function minihilly_gen_grid:destroy/teardown