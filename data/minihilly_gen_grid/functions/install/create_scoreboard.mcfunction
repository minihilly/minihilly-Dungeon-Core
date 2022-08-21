#>  minihilly_gen_grid:install/create_scoreboard
#       creates required scoreboard objectives for grid generator

#>
#   temporary value holder, used mostly for calculations within a single tick
#@internal
#define objective minihilly_gen_grid.temp
scoreboard objectives add minihilly_gen_grid.temp dummy

#>
#   value constants on fakeplayers, e.g. #16 has a constant value of 16
#@internal
#define objective minihilly_gen_grid.const
scoreboard objectives add minihilly_gen_grid.const dummy

#>  
#   Stores a lot of fakeplayer values, check the fakeplayer install for more
#   Also stores ID value of each "Grid Manager" entity
#@internal
#define objective minihilly_gen_grid.config
scoreboard objectives add minihilly_gen_grid.config dummy {"text":"minihilly Grid Config","color":"red"}

#region grid manager nbt score data
#>
#   for grid manager - x coordinate starting position of grid
#@internal
#define objective minihilly_gen_grid.position.start.x
scoreboard objectives add minihilly_gen_grid.position.start.x dummy
#>
#   for grid manager - y coordinate starting position of grid
#@internal
#define objective minihilly_gen_grid.position.start.y
scoreboard objectives add minihilly_gen_grid.position.start.y dummy
#>
#   for grid manager - z coordinate starting position of grid
#@internal
#define objective minihilly_gen_grid.position.start.z
scoreboard objectives add minihilly_gen_grid.position.start.z dummy
#>
#   for grid manager - x axis grid length
#@internal
#define objective minihilly_gen_grid.length.x
scoreboard objectives add minihilly_gen_grid.length.x dummy
#>
#   for grid manager - z axis grid length
#@internal
#define objective minihilly_gen_grid.length.z
scoreboard objectives add minihilly_gen_grid.length.z dummy
#>
#   for grid manager - x cell size (in blocks)
#@internal
#define objective minihilly_gen_grid.cell.size.x
scoreboard objectives add minihilly_gen_grid.cell.size.x dummy
#>
#   for grid manager - z cell size (in blocks)
#@internal
#define objective minihilly_gen_grid.cell.size.z
scoreboard objectives add minihilly_gen_grid.cell.size.z dummy
#endregion

#region main loop
#>
#   ID value of target grid
#@internal
#define objective minihilly_gen_grid.id
scoreboard objectives add minihilly_gen_grid.id dummy
#>
#   Queue of grid cells remaining to generate. Decrements each time a cell is created for target grid
#@internal
#define objective minihilly_gen_grid.cell.queue
scoreboard objectives add minihilly_gen_grid.cell.queue dummy
#endregion

#region coords for grid managers
#>
#@internal
#define objective minihilly_gen_grid.position.current.x
scoreboard objectives add minihilly_gen_grid.position.current.x dummy
#>
#@internal
#define objective minihilly_gen_grid.position.current.y
scoreboard objectives add minihilly_gen_grid.position.current.y dummy
#>
#@internal
#define objective minihilly_gen_grid.position.current.z
scoreboard objectives add minihilly_gen_grid.position.current.z dummy
#endregion

#region copy of grid lengths, used to 'step' (decrement conditionally) through the base length values
#>
#@internal
#define objective minihilly_gen_grid.length.x.step
scoreboard objectives add minihilly_gen_grid.length.x.step dummy
#>
#@internal
#define objective minihilly_gen_grid.length.z.step
scoreboard objectives add minihilly_gen_grid.length.z.step dummy
#endregion

# x-axis length of grid where cells are chunk-sized. Used for forceloading chunks
#>
#@within minihilly_gen_grid:pregen/chunk_manager
#define objective minihilly_gen_grid.chunk.length.x
scoreboard objectives add minihilly_gen_grid.chunk.length.x dummy
# z-axis length of grid where cells are chunk-sized. Used for forceloading chunks
#>
#@within minihilly_gen_grid:pregen/chunk_manager
#define objective minihilly_gen_grid.chunk.length.z
scoreboard objectives add minihilly_gen_grid.chunk.length.z dummy

#>
#@within minihilly_gen_grid:pregen/chunk_manager
#define objective minihilly_gen_grid.chunk.position.start.x
scoreboard objectives add minihilly_gen_grid.chunk.position.start.x dummy
#>
#@within minihilly_gen_grid:pregen/chunk_manager
#define objective minihilly_gen_grid.chunk.position.start.z
scoreboard objectives add minihilly_gen_grid.chunk.position.start.z dummy