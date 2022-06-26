## modify writable_book slot and merge into target inventory
data modify storage ti:data temp.data.item.Slot set from storage ti:data temp.data.item.tag.slot
data modify block 29999970 -62 2 Items[] set from storage ti:data temp.data.item
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}