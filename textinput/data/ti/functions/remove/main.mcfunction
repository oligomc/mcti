## kill item entity and clear writable_book
kill @e[type=item, nbt={Item:{tag:{textinput:true}}}]
clear @s writable_book{textinput:true}

## retrieve writable_book data and merge into player inventory
tag @s add ti.remove
data modify block 29999970 -62 2 Items set from entity @s Inventory
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.register] if score @s ti.register = @p[tag=ti.remove] ti.register run data modify block 29999970 -62 2 Items append from entity @s data.item
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}

##remove ti.remove tag and reset ti.inv score
tag @s remove ti.remove
scoreboard players set @s ti.inv 1