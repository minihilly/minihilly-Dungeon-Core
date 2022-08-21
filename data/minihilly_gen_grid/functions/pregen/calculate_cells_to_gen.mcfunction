#> minihilly_gen_grid:pregen/calculate_cells_to_gen
#   returns total cells for given area of grid
#@context Grid Manager
#@within
#   minihilly_gen_grid:pregen/grid_manager
#   minihilly_gen_grid:pregen/chunk_manager

tellraw @a[tag=debug,scores={debugLogPriority=300}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/calculate_cells_to_gen"}]}

scoreboard players operation @s minihilly_gen_grid.cell.queue = @s minihilly_gen_grid.length.x
scoreboard players operation @s minihilly_gen_grid.cell.queue *= @s minihilly_gen_grid.length.z

scoreboard players operation @s minihilly_gen_grid.length.x.step = @s minihilly_gen_grid.length.x
scoreboard players operation @s minihilly_gen_grid.length.z.step = @s minihilly_gen_grid.length.z

scoreboard players operation $total_cells minihilly_gen_grid.config += @s minihilly_gen_grid.cell.queue