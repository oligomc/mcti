## remove previous bin data, remove writable_book from storage inv, and clear player inv
# writable_book is removed so it is not duplicated when merging inventory
data remove storage ti:data bin
data remove storage ti:data inv[{tag:{input:1b}}]
clear @p

## append non-writable_books to proper bin
execute store result score #i textinput run data get storage ti:data inv
execute if score #i textinput matches 1.. run function ti:move/loop

## append writable_book to proper bin
data modify storage ti:data item.Slot set from storage ti:data item.tag.slot
data modify storage ti:data bin.one append from storage ti:data item

## merge bin items into player inventory using shulker_box
execute if data storage ti:data bin.one run function ti:move/merge/hotbar
execute if data storage ti:data bin.two run function ti:move/merge/inventory
execute if data storage ti:data bin.three run function ti:move/merge/armor