## merge item in temp.swap into offhand
data modify storage ti:data temp.swap.Slot set value 0b
data modify block 29999970 -62 2 Items[0] set from storage ti:data temp.swap
item replace entity @s weapon.offhand from block 29999970 -62 2 container.0