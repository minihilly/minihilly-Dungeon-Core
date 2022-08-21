#> minihilly_gen_grid:player/ui/player_prompt
#   prompts the player(s) with an alert message to tag themselves as an admin of this datapack
#@user
#@within #minihilly_gen_grid:suggest_input

#>
# Player has admin priviledges for this datapack
#@internal
#define tag minihilly_gen_grid.admin

tellraw @a[tag=!minihilly_gen_grid.admin] {"text":"","extra": [{"text":"[mGrid] ","color":"gold","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDatapack"}},{"text":"[Click Here]","color":"red","underlined": true,"clickEvent": {"action": "suggest_command","value": "/tag @s add minihilly_gen_grid.admin"}},{"text":" to make yourself admin","color":"gray"}]}
execute if entity @a[tag=minihilly_gen_grid.admin] run function minihilly_gen_grid:player/ui/suggest_arguments