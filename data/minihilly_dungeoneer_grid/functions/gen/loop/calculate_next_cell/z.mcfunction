#> minihilly_dungeoneer_grid:gen/loop/calculate_next_cell/z
#@within minihilly_dungeoneer_grid:gen/loop/calculate_next_cell

scoreboard players remove @s minihilly_dungeoneer_grid.length.z.step 1
execute unless score @s minihilly_dungeoneer_grid.length.z.step matches ..0 run scoreboard players operation @s minihilly_dungeoneer_grid.length.x.step = @s minihilly_dungeoneer_grid.length.x
execute unless score @s minihilly_dungeoneer_grid.length.z.step matches ..0 run scoreboard players operation @s minihilly_dungeoneer_grid.position.current.x = @s minihilly_dungeoneer_grid.position.start.x
scoreboard players operation @s minihilly_dungeoneer_grid.position.current.z += @s minihilly_dungeoneer_grid.cell.size.z