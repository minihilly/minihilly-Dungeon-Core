#>  minihilly_2d_grid:pregen/create_grid_manager/uuid_1
#       summons the Grid Manager entity using the 'G-R-I-D-1' UUID. Must not be called twice.

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:pregen/create_grid_manager/uuid_1"}]}

summon marker ~ ~ ~ {Tags:["minihilly_grid.grid_manager"],UUID:[I;6,131073,851968,1],CustomName:'{"text":"Grid Manager the first"}'}
execute as 00000006-0002-0001-000D-000000000001 run scoreboard players operation @s minihilly_grid.id = $grid_manager_id minihilly_grid.config

execute as 00000006-0002-0001-000D-000000000001 at @s run function minihilly_2d_grid:pregen/setup