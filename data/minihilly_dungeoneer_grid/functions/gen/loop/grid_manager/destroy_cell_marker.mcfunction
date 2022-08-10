#> minihilly_dungeoneer_grid:gen/loop/grid_manager/destroy_cell_marker
#   Unloads the chunk and destroys chunk marker at this position
#@context Grid Manager
#@within minihilly_dungeoneer_grid:gen/loop/grid_manager


# unload chunk (unless another forceload entity exists within this chunk)
    #I am assming the entities will exist within 384 blocks (height of overworld as of 1.18)
    #Not sure if there's a way to check the entire height volume of a chunk without explicitly using an area selector like this
    #any entities above or below the build limits will be ignored with this, but since I can't make it "unlimited" I figured this would be reasonable
execute at @s positioned ~ -64 ~ unless entity @e[tag=global.forceload,dx=15,dy=384,dz=15] run forceload remove ~ ~

# for debugging only
#execute at @s run summon armor_stand ~ ~ ~ {Tags:["minihilly_dungeoneer_grid.debug.armor_stand"],Small:1b,CustomName:'{"text":"killchunk"}',CustomNameVisible:1b,NoGravity:1b}
