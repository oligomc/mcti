## remove data pack assets
scoreboard objectives remove textinput
advancement revoke @a only ti:change
advancement revoke @a only ti:sign
advancement revoke @a only ti:gui
advancement revoke @a only ti:lect
data remove storage ti:io in
data remove storage ti:io out
data remove storage ti:data inv
data remove storage ti:data item
data remove storage ti:data comp
data remove storage ti:data bin
clear @a writable_book{input:1b}
tag @a[tag=ti.book] remove ti.book
setblock 0 -64 0 air
kill @e[x=-1, dx=1, y=-71, dy=1, z=-1, dz=1, type=minecraft:armor_stand, tag=ti.item]
forceload remove 0 0
