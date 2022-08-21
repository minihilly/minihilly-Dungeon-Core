#>  minihilly_gen_grid:uninstall/remove_fakeplayer_scoreboard
#       removes fakeplayer values for grid generator

#region minihilly_gen_grid.config
scoreboard players reset $installed minihilly_gen_grid.setup

scoreboard players reset $grid_to_destroy minihilly_gen_grid.config
scoreboard players reset $grid_manager_id minihilly_gen_grid.config
scoreboard players reset $target_grid_id minihilly_gen_grid.config

scoreboard players reset #x_global_pos minihilly_gen_grid.config
scoreboard players reset #y_global_pos minihilly_gen_grid.config
scoreboard players reset #z_global_pos minihilly_gen_grid.config

scoreboard players reset #x_cell_scale minihilly_gen_grid.config
scoreboard players reset #y_cell_scale minihilly_gen_grid.config
scoreboard players reset #z_cell_scale minihilly_gen_grid.config

scoreboard players reset #uuids_available minihilly_gen_grid.config

scoreboard players reset $total_cells minihilly_gen_grid.config
#endregion

#region constants
scoreboard players reset #16 minihilly_gen_grid.const
scoreboard players reset #8 minihilly_gen_grid.const
scoreboard players reset #-1 minihilly_gen_grid.const
#endregion