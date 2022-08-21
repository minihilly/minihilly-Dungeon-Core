#> minihilly_gen_grid:gen/loop/grid_manager/summon_cell_marker
#@context Grid Manager
#@within minihilly_gen_grid:gen/loop/grid_manager

#region declarations
#>
#   cell entity - both regular cells and chunk cells have this tag
#@internal
#define tag minihilly_gen_grid.cell

#>
#   chunk (cell) entity - only chunk loader cells have this tag
#@internal
#define tag minihilly_gen_grid.chunk

#>
#   for debugging purposes only
#@internal
#define tag minihilly_gen_grid.debug.armor_stand

#   for debugging purposes only
#@internal
#define tag minihilly_gen_grid.debug.cell

#   for debugging purposes only
#@internal
#define tag minihilly_gen_grid.debug.chunk

#>
#   for compatibility with other datapacks. Entity with this tag is forceloading the chunk at its static position
#@internal
#define tag global.forceload

#>
#   entity with this tag is forceloading the chunk at its static position
#@internal
#define tag minihilly_gen_grid.forceload

#>
#   temporary tag used only this function to target current marker entity
#@private
#define tag minihilly_gen_grid.cell.temp
#endregion

tellraw @a[tag=debug,scores={debugLogPriority=250..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:gen/loop/summon_cell_marker"}]}

# for debugging
    #execute positioned as @s[tag=!minihilly_gen_grid.forceload.add] run summon armor_stand ~ ~ ~ {Tags:["minihilly_gen_grid.debug.armor_stand","minihilly_gen_grid.debug.cell","minihilly_gen_grid.cell.temp"],CustomName:'{"text":"grid cell"}',CustomNameVisible:1b,NoGravity:1b}
    #execute positioned as @s[tag=minihilly_gen_grid.forceload.add] run summon armor_stand ~ ~ ~ {Tags:["minihilly_gen_grid.debug.armor_stand","minihilly_gen_grid.cell","minihilly_gen_grid.debug.chunk","minihilly_gen_grid.cell.temp"],Small:1b,CustomName:'{"text":"chunk cell"}',CustomNameVisible:1b,NoGravity:1b}
# cell/chunk marker entity
execute positioned as @s[tag=!minihilly_gen_grid.forceload.add] run summon marker ~ ~ ~ {Tags:["minihilly_gen_grid.cell","minihilly_gen_grid.cell.temp"],CustomName:'{"text":"Grid Cell"}'}
execute positioned as @s[tag=minihilly_gen_grid.forceload.add] run summon marker ~ ~ ~ {Tags:["minihilly_gen_grid.cell","minihilly_gen_grid.chunk","global.forceload","minihilly_gen_grid.forceload","minihilly_gen_grid.cell.temp"],CustomName:'{"text":"Chunk Cell"}'}
# forceload chunk (if requested)
execute at @s if entity @s[tag=minihilly_gen_grid.forceload.add] run forceload add ~ ~

# copy ID, cell size
execute positioned as @s run scoreboard players operation @e[type=marker,tag=minihilly_gen_grid.cell.temp,distance=..0.1] minihilly_gen_grid.id += @s minihilly_gen_grid.id
execute positioned as @s run scoreboard players operation @e[type=marker,tag=minihilly_gen_grid.cell.temp,distance=..0.1] minihilly_gen_grid.cell.size.x += @s minihilly_gen_grid.cell.size.x
execute positioned as @s run scoreboard players operation @e[type=marker,tag=minihilly_gen_grid.cell.temp,distance=..0.1] minihilly_gen_grid.cell.size.z += @s minihilly_gen_grid.cell.size.z
execute positioned as @s run tag @e[type=marker,tag=minihilly_gen_grid.cell.temp,distance=..0.1] remove minihilly_gen_grid.cell.temp