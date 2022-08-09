#> minihilly_dungeoneer_main:install/create_scoreboard
#       creates required scoreboard objectives for grid generator
#@within minihilly_dungeoneer_main:install/initialize

#>
#   temporary value holder, used mostly for calculations within a single tick
#@internal
#define objective minihilly_dungeoneer_main.temp
scoreboard objectives add minihilly_dungeoneer_main.temp dummy

#>
#   value constants on fakeplayers, e.g. #16 has a constant value of 16
#@internal
#define objective minihilly_dungeoneer_main.const
scoreboard objectives add minihilly_dungeoneer_main.const dummy