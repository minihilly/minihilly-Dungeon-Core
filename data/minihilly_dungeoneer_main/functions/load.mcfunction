#>  minihilly_dungeoneer_main:load
#       load function for minihilly_dungeon_grid datapack, ran on load.json
#@internal

#>  
#   Stores a lot of fakeplayer values, check the fakeplayer info for more
#   Also stores ID value of each "Grid Manager" entity
#@internal
#define objective minihilly_dungeoneer_main.config
scoreboard objectives add minihilly_dungeoneer_main.config dummy {"text":"minihilly Dungeoneer Config","color":"red"}

#>
#   Used as a bool to check if a scoreboard objective exists or not
#@internal
#define score_holder #doesExist

#   check if datapack needs installing
execute unless score #doesExist minihilly_dungeoneer_main.config matches -2147483648.. run function minihilly_2d_grid:install/initialize

#   prompt the player if they want to tag themselves as admin
#   unused, called by player instead  |   function minihilly_2d_grid:player/ui/player_prompt