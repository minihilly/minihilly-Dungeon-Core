#> minihilly_2d_grid:gen/loop/calculate_next_cell/x
#@within minihilly_2d_grid:gen/loop/calculate_next_cell

scoreboard players remove @s minihilly_grid.length.x.step 1
scoreboard players operation @s minihilly_grid.position.current.x += @s minihilly_grid.cell.size.x