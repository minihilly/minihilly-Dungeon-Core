#> minihilly_dungeoneer_install_manager:install/initialize
#   init for installation
#@within
#   minihilly_dungeoneer_install_manager:first_time_installation

#region msg
#   install message
say PLACEHOLDER 1ST INSTALL [minihilly_dungeoneer_install_manager:install/initialize]
#endregion

#   tickbuster
say PLACEHOLDER TICKBUSTER SETUP [minihilly_dungeoneer_install_manager:first_time_installation]
function tickbuster:.module/setup

#region scoreboard
#   create scoreboard objectives
    # none
#   create fakeplayer scores
function minihilly_dungeoneer_install_manager:install/create_fakeplayer_scoreboard
#   create entity scores
    # none
#endregion

#region components
function minihilly_dungeoneer_main:install
function minihilly_gen_grid:install
#endregion