#> minihilly_2d_grid:pregen/grid_manager
#@within minihilly_2d_grid:pregen/setup

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:pregen/grid_manager"}]}

# calculate number of cells needed to gen
function minihilly_2d_grid:pregen/calculate_cells_to_gen