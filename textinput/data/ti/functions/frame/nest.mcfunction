## store target held item in storage
clear @p[tag=ti.frame] minecraft:writable_book{textinput:true}

## replace target inventory with book in proper slot
data modify block 29999970 -62 2 Items[] set from entity @s Item
data modify block 29999970 -62 2 Items[0].Slot set from block 29999970 -62 2 Items[0].tag.slot
data modify block 29999970 -62 2 Items append from entity @p[tag=ti.frame] Inventory[]
loot replace entity @p[tag=ti.frame] hotbar.0 mine 29999970 -62 2 air{drop:true}

## remove writable_book from item_frame and remove ti.found tag
data modify entity @s Item set value {id:"minecraft:air", Count:1b}
tag @s remove ti.found