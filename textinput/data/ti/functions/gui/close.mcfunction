## close container block
# containers can be closed in minecraft using the clone command with the "move" argument. Here, the block is cloned to 0 -63 0 (1 block above the black_shulker_box) and recloned back to the executing position
clone ~ ~ ~ ~ ~ ~ 0 -63 0 replace move
clone 0 -63 0 0 -63 0 ~ ~ ~ replace move
tellraw @p {"text":"Cannot open containers with text response book in inventory.","color":"red"}