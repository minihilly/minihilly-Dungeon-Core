#> minihilly_gen_grid:destroy/cells
#@internal

#>
#   temporary tag used only this function for reseting values and killing cell marker entities
#@private
#define tag minihilly_gen_grid.cell.destroy.temp

execute as @e[tag=minihilly_gen_grid.cell] if score @s minihilly_gen_grid.id = $grid_to_destroy minihilly_gen_grid.config run tag @s add minihilly_gen_grid.cell.destroy.temp

execute as @e[tag=minihilly_gen_grid.cell.destroy.temp] run scoreboard players reset @s
execute as @e[tag=minihilly_gen_grid.cell.destroy.temp] run kill @s