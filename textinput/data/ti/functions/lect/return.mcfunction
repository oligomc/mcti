## store book in lectern in armorstand and remove book
# turns out removing a book from a lectern is harder than expected. You cannot simply remove the "Book" tag from the block as the lectern will still visually contain the block because it's "has_book" block state does not change. Instead, we have to replace the lectern with a false has_book state in the proper facing direction. Since we cannot dynamically set the facing direction, we need to test for each direction the block can face.
data modify entity @s HandItems[0] set from block ~ ~ ~ Book
execute if block ~ ~ ~ minecraft:lectern[facing=east] run setblock ~ ~ ~ minecraft:lectern[facing=east, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=north] run setblock ~ ~ ~ minecraft:lectern[facing=north, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=west] run setblock ~ ~ ~ minecraft:lectern[facing=west, has_book=false]
execute if block ~ ~ ~ minecraft:lectern[facing=south] run setblock ~ ~ ~ minecraft:lectern[facing=south, has_book=false]

## if player is not in creative mode, replace book in mainhand
# being in creative mode does not remove writable_book from inventory, so do not bother replacing
execute if entity @p[gamemode=!creative] run item replace entity @p weapon.mainhand from entity @s weapon.mainhand