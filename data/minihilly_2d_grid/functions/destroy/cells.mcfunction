#> minihilly_2d_grid:destroy/cells
#@internal

#>
#   temporary tag used only this function for reseting values and killing cell marker entities
#@private
#define tag minihilly_grid.cell.destroy.temp

execute as @e[tag=minihilly_grid.cell] if score @s minihilly_grid.id = $grid_to_destroy minihilly_grid.config run tag @s add minihilly_grid.cell.destroy.temp

execute as @e[tag=minihilly_grid.cell.destroy.temp] run scoreboard players reset @s
execute as @e[tag=minihilly_grid.cell.destroy.temp] run kill @s