#> minihilly_gen_grid:pregen/create_grid_manager/create_without_uuid
#@internal
#@context
#   summons a Grid Manager without using a specified UUID, used when the available UUIDs have been exceeded

#>
#   a Grid Manager entity. This tag mostly exists for debugging purposes
#@public
#define tag minihilly_gen_grid.grid_manager

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/create_grid_manager/create_without_uuid"}]}

summon marker ~ ~ ~ {Tags:["minihilly_gen_grid.grid_manager","temp"],CustomName:'{"text":"Grid Manager"}'}
scoreboard players operation @e[type=marker,tag=temp] minihilly_gen_grid.id = $grid_manager_id minihilly_gen_grid.config

execute as @e[type=marker,tag=temp] at @s run function minihilly_gen_grid:pregen/setup

tag @e[type=marker,tag=temp] remove temp