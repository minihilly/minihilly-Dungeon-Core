#> minihilly_dungeoneer_grid:pregen/chunk_manager/calculate_chunks_per_cell
#   returns mg.ChunksPerCell total number of chunks to generate this cell
#@context Grid Manager
#@within minihilly_dungeoneer_grid:pregen/chunk_manager

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:pregen/calculate_chunks_per_cell"}]}

# unused function