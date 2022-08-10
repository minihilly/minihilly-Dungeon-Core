#>  minihilly_dungeoneer_install_manager:first_time_installation
#       load function for minihilly_dungeon_grid datapack, ran on load.json
#@internal

#>  
#   Validates pack is installed
#@internal
#define objective minihilly_dungeoneer_install_manager.setup
scoreboard objectives add minihilly_dungeoneer_install_manager.setup dummy

#>
#   Used as a bool to check if a scoreboard objective exists or not
#@internal
#define score_holder $installed

#   check if datapack needs installing
execute unless score $installed minihilly_dungeoneer_install_manager.setup matches -2147483648.. run function minihilly_dungeoneer_install_manager:install/initialize

#   tickbuster
say TICKBUSTER SETUP [minihilly_dungeoneer_install_manager:first_time_installation]
function tickbuster:.module/setup