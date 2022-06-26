## merge inventory items into either inventory or offhand
# inventory data is sorted by slot least to greatest (with the exception of offhand slot, -106, which is always last in array) so starting iterations from end of array instead of front requires less iterations to sort slots after 26 (assuming full inventory)
execute if score #comp ti.register matches -106 run function ti:change/move/offhand/main
execute unless score #comp ti.register matches -106 run function ti:change/move/inventory/main