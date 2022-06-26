## replace player's written_book with previously held item
data modify block 29999970 -62 2 Items set from entity @s Inventory
data modify block 29999970 -62 2 Items append from storage ti:data temp.data.replaced
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}