#> minihilly_2d_grid:destroy/validate
#@within #minihilly_2d_grid:destroy

# if no id value is set, show warning
execute unless score $grid_to_destroy minihilly_grid.config matches -2147483648..2147483647 run function minihilly_2d_grid:player/ui/destroy/no_grid_specified
# else, go to next step
execute if score $grid_to_destroy minihilly_grid.config matches -2147483648..2147483647 run function minihilly_2d_grid:destroy/grid_to_destroy