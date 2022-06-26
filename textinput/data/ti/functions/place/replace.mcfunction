## if target is not in creative mode then return book to mainhand
# being in creative mode does not remove writable_book from inventory, don't replace if they are in creative
execute if entity @s[gamemode=!creative] run function ti:place/return

## replace block with empty lectern
# turns out removing a book from a lectern is harder than expected. You cannot simply remove the "Book" tag from the block as the lectern will still visually contain the block because it's "has_book" block state does not change. Instead, we have to replace the lectern with a false has_book state in the proper facing direction. Since we cannot dynamically set the facing direction, we need to test for each direction the block can face.
execute if block ~ ~ ~ minecraft:lectern[facing=east] run setblock ~ ~ ~ minecraft:lectern[facing=east, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=north] run setblock ~ ~ ~ minecraft:lectern[facing=north, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run setblock ~ ~ ~ minecraft:lectern[facing=west, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run setblock ~ ~ ~ minecraft:lectern[facing=south, has_book=false]