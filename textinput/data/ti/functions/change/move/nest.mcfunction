## get intended and actual slot of writable_book
execute store result score #slot ti.register run data get storage ti:data temp.data.item.tag.slot
execute store result score #comp ti.register run data get storage ti:data temp.data.item.Slot

## search for possible swapped item in target inventory
# since writable_book always starts in hotbar, search through hotbar items to see if book was swapped with another item in inventory
data merge storage ti:data {temp:{bin:{one:[], two:[]}}}
data modify storage ti:data temp.swap set value {}
function ti:change/move/hotbar/main

## if there is a swapped item, check inventory location
# find appropriate items to append to bin.two for inventory merging
execute if score #swap ti.register matches 1 run function ti:change/move/nest1

## merge bin.one into target inventory
data modify storage ti:data temp.bin.one append from storage ti:data temp.inv[]
data modify storage ti:data temp.data.item.Slot set from storage ti:data temp.data.item.tag.slot
data modify storage ti:data temp.bin.one append from storage ti:data temp.data.item
data modify block 29999970 -62 2 Items set from storage ti:data temp.bin.one
loot replace entity @s hotbar.0 mine 29999970 -62 2 air{drop_contents:true}
