#> minihilly_2d_grid:pregen/validate_storage
#   validates nbt storage data for this grid. Refuses to generate if invalid

#>
# command storage for 2D grid system
#@public
#define storage minihilly_2d_grid:args


tellraw @a[tag=debug,scores={debugLogPriority=300}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:pregen/validate_storage"}]}

scoreboard players set #doesExist minihilly_grid.temp 0

# if storage is null
execute unless data storage minihilly_2d_grid:args grid run scoreboard players set #doesExist minihilly_grid.temp -1
execute if score #doesExist minihilly_grid.temp matches -1 run function minihilly_2d_grid:player/ui/pregen_validate_storage/not_found
# if x start is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.x_start run scoreboard players set #doesExist minihilly_grid.temp -2
execute if score #doesExist minihilly_grid.temp matches -2 run function minihilly_2d_grid:player/ui/pregen_validate_storage/x_start_is_null
# if y start is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.y_start run scoreboard players set #doesExist minihilly_grid.temp -3
execute if score #doesExist minihilly_grid.temp matches -3 run function minihilly_2d_grid:player/ui/pregen_validate_storage/y_start_is_null
# if z start is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.z_start run scoreboard players set #doesExist minihilly_grid.temp -4
execute if score #doesExist minihilly_grid.temp matches -4 run function minihilly_2d_grid:player/ui/pregen_validate_storage/z_start_is_null
# if x length is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.x_length run scoreboard players set #doesExist minihilly_grid.temp -5
execute if score #doesExist minihilly_grid.temp matches -5 run function minihilly_2d_grid:player/ui/pregen_validate_storage/x_length_is_null
# if z length is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.z_length run scoreboard players set #doesExist minihilly_grid.temp -6
execute if score #doesExist minihilly_grid.temp matches -6 run function minihilly_2d_grid:player/ui/pregen_validate_storage/z_length_is_null
# if x cell size is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.x_cell_size run scoreboard players set #doesExist minihilly_grid.temp -7
execute if score #doesExist minihilly_grid.temp matches -7 run function minihilly_2d_grid:player/ui/pregen_validate_storage/x_cell_size_is_null
# if z cell size is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.z_cell_size run scoreboard players set #doesExist minihilly_grid.temp -8
execute if score #doesExist minihilly_grid.temp matches -8 run function minihilly_2d_grid:player/ui/pregen_validate_storage/z_cell_size_is_null
# if name size is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.name run scoreboard players set #doesExist minihilly_grid.temp -9
execute if score #doesExist minihilly_grid.temp matches -9 run function minihilly_2d_grid:player/ui/pregen_validate_storage/name_is_null
# if forceload is null
execute unless score #doesExist minihilly_grid.temp matches -1 unless data storage minihilly_2d_grid:args grid.forceload run scoreboard players set #doesExist minihilly_grid.temp 1
execute if score #doesExist minihilly_grid.temp matches 1 run function minihilly_2d_grid:player/ui/pregen_validate_storage/forceload_is_null
# if anything is null, suggest args json text
execute unless score #doesExist minihilly_grid.temp matches 0 run function minihilly_2d_grid:player/ui/suggest_arguments

# else, run next step and create a "Grid Manager" entity, which will be used to execute positional grid data and generate the grid cells
execute if score #doesExist minihilly_grid.temp matches 0.. run function minihilly_2d_grid:pregen/grid_manager/create_grid_manager

scoreboard players reset #doesExist minihilly_grid.temp