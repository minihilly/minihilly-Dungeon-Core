#> minihilly_gen_grid:pregen/chunk_manager
#@within minihilly_gen_grid:pregen/setup

tellraw @a[tag=debug,scores={debugLogPriority=201..}] {"text":"","extra": [{"text":"[mGrid] ","color":"light_purple","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDebug Info"}},{"text":"minihilly_gen_grid:pregen/chunk_manager"}]}

#region declarations
#>
#@private
#define score_holder #x_offset
#>
#@private
#define score_holder #z_offset
#>
#@private
#define score_holder #volume.chunk_aligned.x
#>
#@private
#define score_holder #volume.chunk_aligned.z
#endregion

#region round start pos to chunk (start rounding code extrapolated from Arcensoth's Chunkbuster)
# copy *_start to new var
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.x = @s minihilly_gen_grid.position.start.x
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.z = @s minihilly_gen_grid.position.start.z
# divide by 16 (length of chunk). Note: this operation rounds down to whole number
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.x /= #16 minihilly_gen_grid.const
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.z /= #16 minihilly_gen_grid.const
# multiplty by 16 (length of a chunk).
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.x *= #16 minihilly_gen_grid.const
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.z *= #16 minihilly_gen_grid.const
#endregion

#region calculate offset of start
# copy *_start to temporary var
scoreboard players operation #x_offset minihilly_gen_grid.temp = @s minihilly_gen_grid.position.start.x
scoreboard players operation #z_offset minihilly_gen_grid.temp = @s minihilly_gen_grid.position.start.z
# subtract start from chunk start
scoreboard players operation #x_offset minihilly_gen_grid.temp -= @s minihilly_gen_grid.chunk.position.start.x
scoreboard players operation #z_offset minihilly_gen_grid.temp -= @s minihilly_gen_grid.chunk.position.start.z
#endregion
# add 8 (center chunk).
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.x += #8 minihilly_gen_grid.const
scoreboard players operation @s minihilly_gen_grid.chunk.position.start.z += #8 minihilly_gen_grid.const
#endregion

#region calculate chunks needed to fit custom grid area
# copy *_cell_size value to new var
scoreboard players operation @s minihilly_gen_grid.chunk.length.x = @s minihilly_gen_grid.cell.size.x
scoreboard players operation @s minihilly_gen_grid.chunk.length.z = @s minihilly_gen_grid.cell.size.z
# value multiplied by length (the grid diameter in cells)
scoreboard players operation @s minihilly_gen_grid.chunk.length.x *= @s minihilly_gen_grid.length.x
scoreboard players operation @s minihilly_gen_grid.chunk.length.z *= @s minihilly_gen_grid.length.z
# mod 16 length. unless return 0, add 16 to length
scoreboard players operation #volume.chunk_aligned.x minihilly_gen_grid.temp = @s minihilly_gen_grid.chunk.length.x
scoreboard players operation #volume.chunk_aligned.z minihilly_gen_grid.temp = @s minihilly_gen_grid.chunk.length.z
scoreboard players operation #volume.chunk_aligned.x minihilly_gen_grid.temp %= #16 minihilly_gen_grid.const
scoreboard players operation #volume.chunk_aligned.z minihilly_gen_grid.temp %= #16 minihilly_gen_grid.const
execute unless score #volume.chunk_aligned.x minihilly_gen_grid.temp matches 0 run scoreboard players operation @s minihilly_gen_grid.chunk.length.x += #16 minihilly_gen_grid.const
execute unless score #volume.chunk_aligned.z minihilly_gen_grid.temp matches 0 run scoreboard players operation @s minihilly_gen_grid.chunk.length.z += #16 minihilly_gen_grid.const
# add offset to length
scoreboard players operation @s minihilly_gen_grid.chunk.length.x += #x_offset minihilly_gen_grid.temp
scoreboard players operation @s minihilly_gen_grid.chunk.length.z += #z_offset minihilly_gen_grid.temp
# reset temp values
scoreboard players reset #x_offset minihilly_gen_grid.temp
scoreboard players reset #z_offset minihilly_gen_grid.temp
scoreboard players reset #volume.chunk_aligned.x minihilly_gen_grid.temp
scoreboard players reset #volume.chunk_aligned.z minihilly_gen_grid.temp
#scoreboard players operation @s minihilly_gen_grid.chunk.length.z += #16 minihilly_gen_grid.const
# divide by 16 (length of a chunk)
scoreboard players operation @s minihilly_gen_grid.chunk.length.x /= #16 minihilly_gen_grid.const
scoreboard players operation @s minihilly_gen_grid.chunk.length.z /= #16 minihilly_gen_grid.const
# if grid is so small we get 0, then why are you f- ...set it to 1 anyway just in case
execute if score @s minihilly_gen_grid.chunk.length.x matches 0 run scoreboard players set @s minihilly_gen_grid.chunk.length.x 1
execute if score @s minihilly_gen_grid.chunk.length.z matches 0 run scoreboard players set @s minihilly_gen_grid.chunk.length.z 1
#endregion

# chunks per cell (volume each cell) - don't think this is really used for anything besides debugging now
scoreboard players operation @s mg.ChunksPerCell = @s x_chunks_per_cell
scoreboard players operation @s mg.ChunksPerCell *= @s z_chunks_per_cell

#unused from old code | scoreboard players operation @s mg.ChunksToGen = @s mg.ChunksPerCell

#region replace custom grid scale values with chunk scaling (so the grid generator loop is 'tricked' into using it). This gets reset when it's finished generating
# start
#tellraw @a {"text":"minihilly_gen_grid.position.start.x: ","extra":[{"score":{"name":"@s","objective":"minihilly_gen_grid.position.start.x"}}]}
#tellraw @a {"text":"minihilly_gen_grid.chunk.position.start.x: ","extra":[{"score":{"name":"@s","objective":"minihilly_gen_grid.chunk.position.start.x"}}]}
scoreboard players operation @s minihilly_gen_grid.position.start.x = @s minihilly_gen_grid.chunk.position.start.x
scoreboard players operation @s minihilly_gen_grid.position.start.z = @s minihilly_gen_grid.chunk.position.start.z
# cell size
scoreboard players operation @s minihilly_gen_grid.cell.size.x = #16 minihilly_gen_grid.const
scoreboard players operation @s minihilly_gen_grid.cell.size.z = #16 minihilly_gen_grid.const
# length (grid diameter in cells)
scoreboard players operation @s minihilly_gen_grid.length.x = @s minihilly_gen_grid.chunk.length.x
scoreboard players operation @s minihilly_gen_grid.length.z = @s minihilly_gen_grid.chunk.length.z
#endregion

# tellraw message for admin'd players
function minihilly_gen_grid:player/ui/chunks_to_generate

# calculate number of cells needed to gen
function minihilly_gen_grid:pregen/calculate_cells_to_gen