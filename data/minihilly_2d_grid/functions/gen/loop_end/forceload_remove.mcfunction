#> minihilly_2d_grid:gen/loop_end/forceload_remove
#   Called on loop end if Grid Manager entity is tagged minihilly_grid.forceload.remove
#@within minihilly_2d_grid:gen/loop_end
#@context Grid Manager

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_2d_grid:gen/loop_end/forceload_remove"}]}

scoreboard players reset @s
kill @s