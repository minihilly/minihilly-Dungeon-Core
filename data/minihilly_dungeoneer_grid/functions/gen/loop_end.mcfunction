#> minihilly_dungeoneer_grid:gen/loop_end
#   called when generation loop is complete (all requested cells accounted for)

tellraw @a[tag=debug,scores={debugLogPriority=270..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:gen/loop_end"}]}

# this should really be moved to a separate function
execute if entity @s[tag=minihilly_dungeoneer_grid.forceload.add] run function minihilly_dungeoneer_grid:gen/loop_end/forceload_add

# if forceload.remove -> destroy this entity
execute if entity @s[tag=minihilly_dungeoneer_grid.forceload.remove] run function minihilly_dungeoneer_grid:gen/loop_end/forceload_remove