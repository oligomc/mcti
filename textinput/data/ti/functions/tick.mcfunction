## detect player triggers using dummy armor_stand
# requires 0, 0 to be forceloaded
execute as @e[x=-1, dx=1, y=-71, dy=1, z=-1, dz=1, type=minecraft:armor_stand, tag=ti.item] run function ti:nest

## if player drops book, make it so it can be picked up
execute as @e[predicate=ti:drop] run function ti:book/drop

## display message for all players with writable_book
title @a[tag=ti.book] actionbar {"nbt":"in.message","storage":"ti:io"}