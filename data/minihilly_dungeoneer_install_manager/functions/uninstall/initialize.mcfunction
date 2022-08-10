#> minihilly_dungeoneer_install_manager:uninstall/initialize
#   uninstall
#@internal
#@within #minihilly_dungeoneer_install_manager:uninstall

#   msg
say UNINSTALLING FINAL [minihilly_dungeoneer_install_manager:uninstall/initialize]
# needs to prompt user "are you sure you want to uninstall? [Y/N]"

#   remove fakeplayer scores
function minihilly_dungeoneer_install_manager:uninstall/remove_fakeplayer_scoreboard
#   remove scoreboard
function minihilly_dungeoneer_install_manager:uninstall/remove_scoreboard

#   tickbuster
function tickbuster:.module/teardown

#   disable datapack
datapack disable "file/minihilly Dungeon Core"