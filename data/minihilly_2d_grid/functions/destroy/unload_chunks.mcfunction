#> minihilly_2d_grid:destroy/unload_chunks
#   unloads chunks of specified grid
#@within minihilly_2d_grid:destroy/teardown
#@context Grid Manager

#>
#   Request to remove loaded chunks from grid
#@internal
#define tag minihilly_grid.forceload.remove

tag @s add minihilly_grid.forceload.remove

function minihilly_2d_grid:pregen/setup