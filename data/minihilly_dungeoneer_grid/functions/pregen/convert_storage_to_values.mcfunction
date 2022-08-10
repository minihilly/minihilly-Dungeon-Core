#> minihilly_dungeoneer_grid:pregen/convert_storage_to_values
#@context Grid Manager
#@within minihilly_dungeoneer_grid:pregen/setup

#>
#   Whether to forceload chunks for cells. Tag removed when chunk gen is complete
#@internal
#define tag minihilly_dungeoneer_grid.forceload.add

# debug info message (this function)
tellraw @a[tag=debug,scores={debugLogPriority=270..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:pregen/convert_storage_to_values"}]}

#region minihilly_dungeoneer_grid:args storage
# name
data modify entity @s CustomName set from storage minihilly_dungeoneer_grid:args grid.name
# start pos
execute store result score @s minihilly_dungeoneer_grid.position.start.x run data get storage minihilly_dungeoneer_grid:args grid.x_start
execute store result score @s minihilly_dungeoneer_grid.position.start.y run data get storage minihilly_dungeoneer_grid:args grid.y_start
execute store result score @s minihilly_dungeoneer_grid.position.start.z run data get storage minihilly_dungeoneer_grid:args grid.z_start
# length
execute store result score @s minihilly_dungeoneer_grid.length.x run data get storage minihilly_dungeoneer_grid:args grid.x_length
execute store result score @s minihilly_dungeoneer_grid.length.z run data get storage minihilly_dungeoneer_grid:args grid.z_length
# cell size
execute store result score @s minihilly_dungeoneer_grid.cell.size.x run data get storage minihilly_dungeoneer_grid:args grid.x_cell_size
execute store result score @s minihilly_dungeoneer_grid.cell.size.z run data get storage minihilly_dungeoneer_grid:args grid.z_cell_size
# if nbt forceload is true and 'forceload add complete' is false -> add 'forceload add' tag to target
execute if entity @s[tag=!minihilly_dungeoneer_grid.forceload.add.complete] if data storage minihilly_dungeoneer_grid:args grid{forceload:true} run tag @s add minihilly_dungeoneer_grid.forceload.add
#endregion