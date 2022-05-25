## if writable_book has changed slots then move to correct slot, else goto book/nest
data modify storage ti:data inv set from entity @p Inventory
data modify storage ti:data item set from storage ti:data inv[{tag:{input:1b}}]
execute store result score #slot textinput run data get storage ti:data item.tag.slot
execute store result score #comp textinput run data get storage ti:data item.Slot
execute if score #comp textinput = #slot textinput run function ti:book/nest
execute unless score #comp textinput = #slot textinput run function ti:move/main

## revoke ti:change advancement
advancement revoke @p only ti:change