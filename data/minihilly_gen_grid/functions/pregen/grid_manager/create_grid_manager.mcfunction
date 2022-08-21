#> minihilly_gen_grid:pregen/grid_manager/create_grid_manager
#    create "grid manager" marker entitie(s)
#   always makes UUID assigned markers first, then makes random UUID markers
#@within minihilly_gen_grid:pregen/validate_storage

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/create_grid_manager"}]}

scoreboard players add $grid_manager_id minihilly_gen_grid.config 1

# UUID assigned grid manager(s)
execute if score $grid_manager_id minihilly_gen_grid.config <= #uuids_available minihilly_gen_grid.config run function minihilly_gen_grid:pregen/create_grid_manager/create_with_uuid
# more grid managers (not UUID assigned)
execute if score $grid_manager_id minihilly_gen_grid.config > #uuids_available minihilly_gen_grid.config run function minihilly_gen_grid:pregen/create_grid_manager/create_without_uuid
