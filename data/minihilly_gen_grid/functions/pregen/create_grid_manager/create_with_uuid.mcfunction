#> minihilly_gen_grid:pregen/create_grid_manager/create_with_uuid
#   function list of grid manager marker entities with uuids assigned

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/create_grid_manager/create_with_uuid"}]}

#>
#   Grid Manager entity with 1st UUID (first grid manager created, faster to target)
#   Intended to be read as 'G-R-I-D-1'
# @public
#define entity 6-2-1-D-1
execute if score $grid_manager_id minihilly_gen_grid.config matches 1 run function minihilly_gen_grid:pregen/create_grid_manager/uuid_1
#>
#   Grid Manager entity with 2nd UUID (first grid manager created, faster to target)
#   Inteded to be read as 'G-R-I-D-2'
# @public
#define entity 6-2-1-D-2
execute if score $grid_manager_id minihilly_gen_grid.config matches 2 run function minihilly_gen_grid:pregen/create_grid_manager/uuid_2
#>
#   Grid Manager entity with 2nd UUID (first grid manager created, faster to target)
#   Inteded to be read as 'G-R-I-D-3'
# @public
#define entity 6-2-1-D-3
execute if score $grid_manager_id minihilly_gen_grid.config matches 3 run function minihilly_gen_grid:pregen/create_grid_manager/uuid_3
#>
#   Grid Manager entity with 2nd UUID (first grid manager created, faster to target)
#   Inteded to be read as 'G-R-I-D-4'
# @public
#define entity 6-2-1-D-4
execute if score $grid_manager_id minihilly_gen_grid.config matches 4 run function minihilly_gen_grid:pregen/create_grid_manager/uuid_4