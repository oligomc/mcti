## store writable_book data in
tag @s add ti.change
data modify storage ti:data temp.data.item set from entity @s Inventory[{tag:{textinput:true}}]

## if player is in creative mode then goto change/nest1, else goto change/nest
execute if entity @s[gamemode=creative] run function ti:change/nest1
execute unless entity @s[gamemode=creative] run function ti:change/nest

## reset player assets
tag @s remove ti.change