## use binary tree to get item in intended hotbar slot
execute if score #slot ti.register matches 0 store success score #swap ti.register run data modify storage ti:data temp.swap set from storage ti:data temp.inv[{Slot:0b}]
execute unless score #slot ti.register matches 0 run function ti:change/move/hotbar/tree/l0n0