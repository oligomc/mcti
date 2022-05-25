## do slot math and merge into bin two
# slot is decreased by 9 to fit into shulker_box inventory
scoreboard players remove #comp textinput 9
execute store result storage ti:data inv[0].Slot byte 1 run scoreboard players get #comp textinput
data modify storage ti:data bin.two append from storage ti:data inv[0]