#> minihilly_gen_grid:player/ui/chunks_to_generate
#@within minihilly_gen_grid:pregen/chunk_manager

tellraw @a[tag=minihilly_gen_grid.admin] {"text":"","extra": [{"text":"[mGrid] ","color":"gold","hoverEvent": {"action":"show_text","contents": "minihilly Grid\nDatapack"}},{"text":"Preparing to generate ","color":"gray"},{"score":{"name":"@s","objective":"minihilly_gen_grid.chunk.length.x"}},{"text":"x","color":"yellow"},{"score":{"name":"@s","objective":"minihilly_gen_grid.chunk.length.z"}},{"text":" chunks","color":"gray"}]}
