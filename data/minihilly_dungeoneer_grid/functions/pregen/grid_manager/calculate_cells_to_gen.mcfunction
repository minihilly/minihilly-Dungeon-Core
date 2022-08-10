#> minihilly_dungeoneer_grid:pregen/grid_manager/calculate_cells_to_gen
#   returns total cells for given area of grid
#@context Grid Manager
#@within minihilly_dungeoneer_grid:pregen/chunk_manager

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:pregen/calculate_cells_to_gen"}]}

scoreboard players operation @s minihilly_dungeoneer_grid.cell.queue = @s minihilly_dungeoneer_grid.length.x
scoreboard players operation @s minihilly_dungeoneer_grid.cell.queue *= @s minihilly_dungeoneer_grid.length.z

scoreboard players operation @s minihilly_dungeoneer_grid.length.queue.x = @s minihilly_dungeoneer_grid.length.x
scoreboard players operation @s minihilly_dungeoneer_grid.length.queue.z = @s minihilly_dungeoneer_grid.length.z

scoreboard players operation $total_cells minihilly_dungeoneer_grid.main += @s minihilly_dungeoneer_grid.cell.queue