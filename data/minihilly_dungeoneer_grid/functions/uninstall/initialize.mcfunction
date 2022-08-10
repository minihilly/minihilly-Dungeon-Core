#> minihilly_dungeoneer_grid:uninstall/initialize
# inisitalizer for uninstalling this datapack
#@internal

# prompt user "are you sure you want to uninstall?"
say UNINSTALL COMPONENT GRID [minihilly_dungeoneer_grid:uninstall/initialize]

#region grid
#   remove fakeplayer values
function minihilly_dungeoneer_grid:uninstall/remove_fakeplayer_scoreboard
#   remove entity values
function minihilly_dungeoneer_grid:uninstall/remove_entity_scoreboard
#   remove scoreboard objectives
function minihilly_dungeoneer_grid:uninstall/remove_scoreboard
#endregion