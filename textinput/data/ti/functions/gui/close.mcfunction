## close container block
# containers can be closed in minecraft using the clone command with the "move" argument. Here, the block is cloned to 29999982 -63 1 and recloned back to the executing position
clone ~ ~ ~ ~ ~ ~ 29999982 -63 1 replace move
clone 29999982 -63 1 29999982 -63 1 ~ ~ ~ replace normal
tellraw @p {"text":"Cannot open containers with text response book in inventory.","color":"red"}
