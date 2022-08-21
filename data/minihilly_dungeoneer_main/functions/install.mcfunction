#>  minihilly_dungeoneer_main:install
#       load function for minihilly_dungeon_main datapack, ran on load.json
#@public

#>  
#   Stores a lot of fakeplayer values, check the fakeplayer info for more
#@internal
#define objective minihilly_dungeoneer_main.setup
scoreboard objectives add minihilly_dungeoneer_main.setup dummy {"text":"minihilly Dungeoneer Main Setup","color":"red"}

#>
#   Used as a bool to check if a scoreboard objective exists or not
#@internal
#define score_holder $installed

#   check if datapack needs installing
execute unless score $installed minihilly_dungeoneer_main.setup matches -2147483648.. run function minihilly_dungeoneer_main:install/initialize