execute unless score #slot ti.register matches 4 store success score #swap ti.register run data modify storage ti:data temp.swap set from storage ti:data temp.inv[{Slot:3b}]
execute if score #slot ti.register matches 4 store success score #swap ti.register run data modify storage ti:data temp.swap set from storage ti:data temp.inv[{Slot:4b}]