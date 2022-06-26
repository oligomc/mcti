## merge inventory items into either hotbar or other slots
execute if score #comp ti.register matches 0..26 run function ti:change/move/hotbar/nest
execute unless score #comp ti.register matches 0..26 run function ti:change/move/nest2