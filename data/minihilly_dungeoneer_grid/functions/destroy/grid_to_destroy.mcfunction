#> minihilly_dungeoneer_grid:destroy/grid_to_destroy
#@within
#   minihilly_dungeoneer_grid:destroy/validate

# reset scores for all entities with specified minihilly_dungeoneer_grid.config <value>
#   Grid Managers with assigned uuids should be targed directly by their uuid instead

# kill all entities with specified minihilly_dungeoneer_grid.config <value>
#   (note: can only kill Grid Manager entities that are in forceloaded chunks)
#   (note: minihilly_dungeoneer_grid.config scoreboard is storing an incremental id in this context)

#   todo: unload chunks when destorying grid (where applicable)

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:destroy/grid_to_destroy"}]}

execute if score $grid_to_destroy minihilly_dungeoneer_grid.config <= #uuids_available minihilly_dungeoneer_grid.config run function minihilly_dungeoneer_grid:destroy/grid_with_uuid
execute if score $grid_to_destroy minihilly_dungeoneer_grid.config > #uuids_available minihilly_dungeoneer_grid.config run function minihilly_dungeoneer_grid:destroy/grid_without_uuid

scoreboard players reset $grid_to_destroy minihilly_dungeoneer_grid.config