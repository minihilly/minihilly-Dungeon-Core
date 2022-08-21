#> minihilly_gen_grid:player/ui/suggest_arguments
#

tellraw @a[tag=minihilly_gen_grid.admin] {"text":"","extra": [{"text":"[mGrid] ","color":"gold","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDatapack"}},{"text":"[Click Here]","color":"red","underlined": true,"clickEvent": {"action": "suggest_command","value": "/data modify storage minihilly_gen_grid:args grid set value {name:'\"My Grid Name\"', x_start: 0, y_start: 0, z_start: 0, x_length: 1, z_length: 1, x_cell_size: 16, z_cell_size: 16, forceload:true}"}},{"text":" to edit arguments","color":"gray"}]}