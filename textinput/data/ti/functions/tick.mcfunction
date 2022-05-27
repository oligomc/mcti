## detect player triggers using dummy armor_stand
# requires 0, 0 to be forceloaded
execute as 4e12eb6d-70c7-4647-a0da-cefbaf3e2d16 run function ti:nest

## if player drops book, make it so it can be picked up
execute as @e[predicate=ti:drop] run function ti:book/drop

## display message for all players with writable_book
title @a[tag=textinput] actionbar {"nbt":"in.message","storage":"ti:io"}