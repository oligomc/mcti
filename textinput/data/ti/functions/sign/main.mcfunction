## retrieve writable_book data and merge into player inventory
tag @s add ti.sign
data modify block 29999970 -62 2 Items set from entity @s Inventory
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.register] if score @s ti.register = @p[tag=ti.sign] ti.register run data modify block 29999970 -62 2 Items append from entity @s data.item
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop:true}

## revoke ti:sign advancement and give error message
tag @s remove ti.sign
advancement revoke @s only ti:sign