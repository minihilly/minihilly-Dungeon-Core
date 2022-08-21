#> minihilly_gen_grid:gen/loop/calculate_next_cell/x
#@within minihilly_gen_grid:gen/loop/calculate_next_cell

scoreboard players remove @s minihilly_gen_grid.length.x.step 1
scoreboard players operation @s minihilly_gen_grid.position.current.x += @s minihilly_gen_grid.cell.size.x