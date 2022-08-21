#> minihilly_gen_grid:gen/loop/calculate_next_cell
#@within
#   minihilly_gen_grid:gen/loop/grid_manager

execute if score @s minihilly_gen_grid.length.x.step matches 1.. run function minihilly_gen_grid:gen/loop/calculate_next_cell/x

execute if score @s minihilly_gen_grid.length.x.step matches ..0 if score @s minihilly_gen_grid.length.z.step matches 1.. run function minihilly_gen_grid:gen/loop/calculate_next_cell/z