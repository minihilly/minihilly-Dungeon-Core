#> minihilly_2d_grid:gen/loop_for_uuid
#@within minihilly_2d_grid:gen/loop

tellraw @a[tag=debug,scores={debugLogPriority=300..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:gen/loop_for_uuid"}]}

execute as 00000006-0002-0001-000D-000000000001 at @s if score @s minihilly_grid.cell.queue matches 1.. unless score #use_only_this_uuid minihilly_grid.temp matches 1.. run scoreboard players set #use_only_this_uuid minihilly_grid.temp 1
execute as 00000006-0002-0001-000D-000000000002 at @s if score @s minihilly_grid.cell.queue matches 1.. unless score #use_only_this_uuid minihilly_grid.temp matches 1.. run scoreboard players set #use_only_this_uuid minihilly_grid.temp 2
execute as 00000006-0002-0001-000D-000000000003 at @s if score @s minihilly_grid.cell.queue matches 1.. unless score #use_only_this_uuid minihilly_grid.temp matches 1.. run scoreboard players set #use_only_this_uuid minihilly_grid.temp 3
execute as 00000006-0002-0001-000D-000000000004 at @s if score @s minihilly_grid.cell.queue matches 1.. unless score #use_only_this_uuid minihilly_grid.temp matches 1.. run scoreboard players set #use_only_this_uuid minihilly_grid.temp 4

execute if score #use_only_this_uuid minihilly_grid.temp matches 1 as 00000006-0002-0001-000D-000000000001 at @s run function minihilly_2d_grid:gen/loop/grid_manager
execute if score #use_only_this_uuid minihilly_grid.temp matches 2 as 00000006-0002-0001-000D-000000000002 at @s run function minihilly_2d_grid:gen/loop/grid_manager
execute if score #use_only_this_uuid minihilly_grid.temp matches 3 as 00000006-0002-0001-000D-000000000003 at @s run function minihilly_2d_grid:gen/loop/grid_manager
execute if score #use_only_this_uuid minihilly_grid.temp matches 4 as 00000006-0002-0001-000D-000000000004 at @s run function minihilly_2d_grid:gen/loop/grid_manager

scoreboard players reset #use_only_this_uuid minihilly_grid.temp