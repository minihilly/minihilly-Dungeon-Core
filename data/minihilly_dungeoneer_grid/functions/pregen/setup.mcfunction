#> minihilly_dungeoneer_grid:pregen/setup
#@context Grid Manager
#@within
#   minihilly_dungeoneer_grid:pregen/create_grid_manager/**
#   minihilly_dungeoneer_grid:gen/loop_end/forceload_add
#   minihilly_dungeoneer_grid:destroy/unload_chunks

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_dungeoneer_grid:pregen/setup"}]}

# fetch the nbt storage data and convert it to scores on this entity
    #note: grid manager with forceload.remove tag do not run this function
    #instead, they obtain the values via a separate function within minihilly_dungeoneer_grid:destroy
execute unless entity @s[tag=minihilly_dungeoneer_grid.forceload.remove] run function minihilly_dungeoneer_grid:pregen/convert_storage_to_values

# if forceload.add OR forceload.remove is true, run "chunk manager" to create a chunk grid
    #(maybe I should change this to a forceload.modify tag so it's more readable?)
execute unless entity @s[tag=!minihilly_dungeoneer_grid.forceload.add,tag=!minihilly_dungeoneer_grid.forceload.remove] unless entity @s[tag=minihilly_dungeoneer_grid.forceload.add,tag=minihilly_dungeoneer_grid.forceload.remove] run function minihilly_dungeoneer_grid:pregen/chunk_manager
# else, proceed with generating the requested grid
execute if entity @s[tag=!minihilly_dungeoneer_grid.forceload.add,tag=!minihilly_dungeoneer_grid.forceload.remove] run function minihilly_dungeoneer_grid:pregen/grid_manager

# get pos from start pos (used by gen loop)
scoreboard players operation @s minihilly_dungeoneer_grid.position.current.x = @s minihilly_dungeoneer_grid.position.start.x
scoreboard players operation @s minihilly_dungeoneer_grid.position.current.y = @s minihilly_dungeoneer_grid.position.start.y
scoreboard players operation @s minihilly_dungeoneer_grid.position.current.z = @s minihilly_dungeoneer_grid.position.start.z

# if $target_grid_id value is not null, add 1
execute if score $target_grid_id minihilly_dungeoneer_grid.config matches -2147483648..2147483647 run scoreboard players add $target_grid_id minihilly_dungeoneer_grid.config 1
# set target grid id to the highest (therefore newest) available id value
    #since this function can be called by multiple Grid Manager entities at once, this has to check if it's null first
    #not ideal for this to be here but can't think of where else to run it
execute unless score $target_grid_id minihilly_dungeoneer_grid.config matches -2147483648..2147483647 run scoreboard players operation $target_grid_id minihilly_dungeoneer_grid.config = $grid_manager_id minihilly_dungeoneer_grid.config

# tell tickbuster we got work to do
function minihilly_dungeoneer_grid:handles/tickbuster/vote