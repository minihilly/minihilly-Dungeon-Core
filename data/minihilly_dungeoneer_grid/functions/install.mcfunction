#>  minihilly_dungeoneer_grid:install
#       load function for minihilly_dungeon_grid datapack, ran on load.json
#@public

#>  
#   Stores a lot of fakeplayer values, check the fakeplayer info for more
#   Also stores ID value of each "Grid Manager" entity
#@internal
#define objective minihilly_dungeoneer_grid.setup
scoreboard objectives add minihilly_dungeoneer_grid.setup dummy

#>
#   Used as a bool to check if a scoreboard objective exists or not
#@internal
#define score_holder $installed

#   check if datapack needs installing
execute unless score $installed minihilly_dungeoneer_grid.setup matches -2147483648.. run function minihilly_dungeoneer_grid:install/initialize

#   prompt the player if they want to tag themselves as admin
#   unused, called by player instead  |   function minihilly_dungeoneer_grid:player/ui/player_prompt