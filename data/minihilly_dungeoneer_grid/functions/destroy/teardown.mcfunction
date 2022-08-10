#> minihilly_dungeoneer_grid:destroy/teardown
#   Removes, kills, unloads all components of a Grid
#@within
#   minihilly_dungeoneer_grid:destroy/grid_with_uuid
#   minihilly_dungeoneer_grid:destroy/grid_without_uuid
#@context Grid Manager

# grid manager (this)
#execute as @s run scoreboard players reset @s
function minihilly_dungeoneer_grid:destroy/unload_chunks
#This is called after unload_chunks has finished instead    |   kill @s

# cells
function minihilly_dungeoneer_grid:destroy/cells