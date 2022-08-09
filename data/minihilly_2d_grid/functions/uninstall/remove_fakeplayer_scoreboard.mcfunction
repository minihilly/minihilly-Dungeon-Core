#>  minihilly_2d_grid:uninstall/remove_fakeplayer_scoreboard
#       removes fakeplayer values for grid generator

#region minihilly_grid.config
scoreboard players reset #doesExist minihilly_grid.config

scoreboard players reset $grid_to_destroy minihilly_grid.config
scoreboard players reset $grid_manager_id minihilly_grid.config
scoreboard players reset $target_grid_id minihilly_grid.config

scoreboard players reset #x_global_pos minihilly_grid.config
scoreboard players reset #y_global_pos minihilly_grid.config
scoreboard players reset #z_global_pos minihilly_grid.config

scoreboard players reset #x_cell_scale minihilly_grid.config
scoreboard players reset #y_cell_scale minihilly_grid.config
scoreboard players reset #z_cell_scale minihilly_grid.config

scoreboard players reset #uuids_available minihilly_grid.config

scoreboard players reset $total_cells minihilly_grid.config
#endregion

#region constants
scoreboard players reset #16 minihilly_grid.const
scoreboard players reset #8 minihilly_grid.const
scoreboard players reset #-1 minihilly_grid.const
#endregion