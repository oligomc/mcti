execute store result storage ti:data temp.inv[-1].Slot byte 1 run scoreboard players get #place ti.register
data modify storage ti:data temp.bin.two append from storage ti:data temp.inv[-1]
data remove storage ti:data temp.inv[-1]
execute store result score #place ti.register run data get storage ti:data temp.inv[-1].Slot
scoreboard players remove #place ti.register 27
execute if score #place ti.register matches 0.. run function ti:change/move/inventory/loop