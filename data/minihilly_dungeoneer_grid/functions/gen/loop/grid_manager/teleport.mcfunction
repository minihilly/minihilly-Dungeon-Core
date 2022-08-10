#> minihilly_dungeoneer_grid:gen/loop/grid_manager/teleport
#@context Grid Manager
#@within minihilly_dungeoneer_grid:gen/loop/grid_manager

tellraw @a[tag=debug,scores={debugLogPriority=300..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:gen/grid_manager/teleport"}]}

execute store result entity @s Pos[0] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.x
execute store result entity @s Pos[1] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.y
execute store result entity @s Pos[2] double 1.0 run scoreboard players get @s minihilly_dungeoneer_grid.position.current.z

# for debugging
#execute positioned as @s run summon minecraft:armor_stand ~ ~-.5 ~ {Tags:["minihilly_dungeoneer_grid.debug.armor_stand","test"],Small:1b,NoGravity:1b,CustomName:'{"text":"gm teleport"}',CustomNameVisible:1b}