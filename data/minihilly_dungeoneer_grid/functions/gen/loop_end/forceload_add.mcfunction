#> minihilly_dungeoneer_grid:gen/loop_end/forceload_add
#   Called on loop end if Grid Manager entity is tagged minihilly_dungeoneer_grid.forceload.add
#@within minihilly_dungeoneer_grid:gen/loop_end
#@context Grid Manager

#>
#@internal
#define tag minihilly_dungeoneer_grid.forceload.add.complete

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:gen/loop_end/forceload_add"}]}

tag @s add minihilly_dungeoneer_grid.forceload.add.complete
tag @s add temp
tag @s remove minihilly_dungeoneer_grid.forceload.add
execute if entity @s[tag=temp] run function minihilly_dungeoneer_grid:pregen/setup
tag @s remove temp