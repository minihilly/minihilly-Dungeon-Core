#> minihilly_2d_grid:destroy/destroy_all
#   Destroys ALL existing grids and unloads all forceloaded chunks (as long as they are loaded and discoverable by this function)
#   Use with extreme caution. Intended mostly for debugging.
#@internal

execute as @e[tag=minihilly_grid.grid_manager] run scoreboard players reset @s
# due to a bug(?) this somehow still does not reset the scores of the UUID entities (even though they have this tag), so they are reset below
#scoreboard players reset 6-2-1-D-1
#scoreboard players reset 6-2-1-D-2
#scoreboard players reset 6-2-1-D-3
#scoreboard players reset 6-2-1-D-4
    #(this was fixed by adding an execute before the scoreboard reset command instead)

execute as @e[tag=minihilly_grid.cell] run scoreboard players reset @s

kill @e[tag=minihilly_grid.grid_manager]
kill @e[tag=minihilly_grid.cell]
kill @e[tag=minihilly_grid.debug.armor_stand]
kill @e[tag=minihilly_grid.chunk]

forceload remove all

scoreboard players reset $grid_manager_id minihilly_grid.config
scoreboard players reset $target_grid_id minihilly_grid.config