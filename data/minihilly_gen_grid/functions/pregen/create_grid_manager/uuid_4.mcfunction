#>  minihilly_gen_grid:pregen/create_grid_manager/uuid_4
#       summons the Grid Manager entity using the 'G-R-I-D-4' UUID. Must not be called twice.

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/create_grid_manager/uuid_4"}]}

summon marker ~ ~ ~ {Tags:["minihilly_gen_grid.grid_manager"],UUID:[I;6,131073,851968,4],CustomName:'{"text":"Grid Manager the fourth"}'}
execute as 00000006-0002-0001-000D-000000000004 run scoreboard players operation @s minihilly_gen_grid.id = $grid_manager_id minihilly_gen_grid.config

execute as 00000006-0002-0001-000D-000000000004 at @s run function minihilly_gen_grid:pregen/setup