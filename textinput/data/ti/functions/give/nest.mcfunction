## store target held item in storage
execute as @p[tag=ti.give] run function ti:give/nest1

## replace target inventory with book in proper slot
data modify block 29999970 -62 2 Items[] set from entity @s HandItems[0]
data modify block 29999970 -62 2 Items[0].Slot set from block 29999970 -62 2 Items[0].tag.slot
data modify block 29999970 -62 2 Items append from entity @p[tag=ti.give] Inventory[]
loot replace entity @p[tag=ti.give] hotbar.0 mine 29999970 -62 2 air{drop:true}

## replace item in armor stand hand and remove ti.found tag
data modify entity @s HandItems[0] set from storage ti:data temp.swap
tag @s remove ti.found