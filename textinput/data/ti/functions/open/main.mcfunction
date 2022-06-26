## grab item data from ti.register
tag @s add ti.open

## replace writable_book
data modify block 29999970 -62 2 Items set from entity @s Inventory
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.register] if score @s ti.register = @p[tag=ti.open] ti.register run data modify block 29999970 -62 2 Items append from storage ti:data temp.data.replaced
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}

## store target rotation
execute store result score @s ti.rot run data get entity @s Rotation[0]