## append items in slots 27..35 to bin.two
execute store result score #place ti.register run data get storage ti:data temp.inv[-1].Slot
scoreboard players remove #place ti.register 27
function ti:change/move/inventory/loop

## append item in temp.swap to bin.two
scoreboard players remove #comp ti.register 27
execute store result storage ti:data temp.swap.Slot byte 1 run scoreboard players get #comp ti.register
data modify storage ti:data temp.bin.two append from storage ti:data temp.swap

## merge bin.two into target inventory
data modify block 29999970 -62 2 Items set from storage ti:data temp.bin.two
loot replace entity @s inventory.18 mine 29999970 -62 2 air{drop_contents:true}