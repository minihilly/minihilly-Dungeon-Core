#> minihilly_dungeoneer_grid:gen/loop/calculate_next_cell/x
#@within minihilly_dungeoneer_grid:gen/loop/calculate_next_cell

scoreboard players remove @s minihilly_dungeoneer_grid.length.x.step 1
scoreboard players operation @s minihilly_dungeoneer_grid.position.current.x += @s minihilly_dungeoneer_grid.cell.size.x