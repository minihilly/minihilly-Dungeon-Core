#>  minihilly_gen_grid:install/create_fakeplayer_scoreboard
#       initializes fakeplayer values for grid generator

scoreboard players add $installed minihilly_gen_grid.setup 1

#>
#   tracks if the grid managers with uuids exist by counting each one when summoned
#@internal
#define score_holder $grid_manager_id
scoreboard players reset $grid_manager_id minihilly_gen_grid.config

#>
#   grid to destroy <id>
#@internal
#define score_holder $grid_to_destroy
scoreboard players reset $grid_to_destroy minihilly_gen_grid.config

#>
#   indicates number of available hardcoded uuids available for Grid Manager entities to use.
#   Do not change this value unless more uuids have been explicitly added internally to the code
#@internal
#define score_holder #uuids_available
scoreboard players set #uuids_available minihilly_gen_grid.config 4

#>
#   total of all remaining cells to generate for all actively generating grids
#@internal
#define score_holder $total_cells
scoreboard players reset $total_cells minihilly_gen_grid.config

#>
#   currently selected ID. Used during grid generation
#@internal
#define score_holder $target_grid_id
scoreboard players reset $target_grid_id minihilly_gen_grid.config

#>
#   constant value of 16. For chunk calculations
#@internal
#define score_holder #16
scoreboard players set #16 minihilly_gen_grid.const 16

#>
#   constant value of 8. For chunk calculations
#@internal
#define score_holder #8
scoreboard players set #8 minihilly_gen_grid.const 8

#>
#   constant value of -1. For chunk calculations
#@internal
#define score_holder #-1
scoreboard players set #-1 minihilly_gen_grid.const -1