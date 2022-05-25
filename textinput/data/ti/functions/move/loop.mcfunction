## if item is in writable_book slot, swap slot of item
execute store result score #comp textinput run data get storage ti:data inv[0].Slot
execute if score #comp textinput = #slot textinput run function ti:move/swap

## sort item into proper bin
function ti:move/sort

## iterate
scoreboard players remove #i textinput 1
data remove storage ti:data inv[0]
execute unless score #i textinput matches 0 run function ti:move/loop
