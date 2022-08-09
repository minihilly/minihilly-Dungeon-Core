#> minihilly_2d_grid:destroy/grid_with_uuid
#@within
#   minihilly_2d_grid:destroy/grid_to_destroy

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:destroy/grid_with_uuid"}]}

# grid manager
execute if score $grid_to_destroy minihilly_grid.config matches 1 as 00000006-0002-0001-000D-000000000001 at @s if score @s minihilly_grid.id = $grid_to_destroy minihilly_grid.config run function minihilly_2d_grid:destroy/teardown

execute if score $grid_to_destroy minihilly_grid.config matches 2 as 00000006-0002-0001-000D-000000000002 at @s if score @s minihilly_grid.id = $grid_to_destroy minihilly_grid.config run function minihilly_2d_grid:destroy/teardown

execute if score $grid_to_destroy minihilly_grid.config matches 3 as 00000006-0002-0001-000D-000000000003 at @s if score @s minihilly_grid.id = $grid_to_destroy minihilly_grid.config run function minihilly_2d_grid:destroy/teardown

execute if score $grid_to_destroy minihilly_grid.config matches 4 as 00000006-0002-0001-000D-000000000004 at @s if score @s minihilly_grid.id = $grid_to_destroy minihilly_grid.config run function minihilly_2d_grid:destroy/teardown
