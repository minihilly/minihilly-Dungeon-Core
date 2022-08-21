#> minihilly_gen_grid:player/ui/destroy/no_grid_specified
#@within
#   minihilly_gen_grid:destroy/validate

tellraw @a[tag=debug,scores={debugLogPriority=101..}] {"text":"","extra": [{"text":"[mGrid] ","color":"yellow","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Warn"}},{"text":"Grid ID not specified or not found.\nValue missing for $grid_to_destroy in minihilly_gen_grid.config","color":"red"}]}
