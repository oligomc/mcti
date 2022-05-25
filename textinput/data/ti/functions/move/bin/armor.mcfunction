## do slot math and merge into bin three
# slot is decreased by 99 to fit into shulker_box inventory
scoreboard players remove #comp textinput 99
execute store result storage ti:data inv[0].Slot byte 1 run scoreboard players get #comp textinput
data modify storage ti:data bin.three append from storage ti:data inv[0]