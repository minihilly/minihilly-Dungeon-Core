#> minihilly_dungeoneer_main:uninstall/initialize
# initializer for uninstalling this datapack
#@internal

#region msg
say UNINSTALL COMPONENT MAIN minihilly_dungeoneer_main:uninstall/uninstall_init
#endregion

#region main
#   remove fakeplayer values
function minihilly_dungeoneer_main:uninstall/remove_fakeplayer_scoreboard
#   remove entity values
function minihilly_dungeoneer_main:uninstall/remove_entity_scoreboard
#   remove scoreboard objectives
function minihilly_dungeoneer_main:uninstall/remove_scoreboard
#endregion