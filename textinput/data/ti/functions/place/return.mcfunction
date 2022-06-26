## replace player's inventory with book in proper slot
data modify block 29999970 -62 2 Items[] set from block ~ ~ ~ Book
data modify block 29999970 -62 2 Items[0].Slot set from block 29999970 -62 2 Items[0].tag.data.slot
data modify block 29999970 -62 2 Items append from entity @s Inventory[]
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}