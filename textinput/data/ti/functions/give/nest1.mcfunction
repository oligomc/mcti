clear @s minecraft:writable_book{textinput:true}
execute if data entity @s SelectedItem run data modify storage ti:data temp.swap set from entity @s SelectedItem
execute unless data entity @s SelectedItem run data modify storage ti:data temp.swap set value {id:"minecraft:air", Count:1b}
item replace entity @s weapon.mainhand with minecraft:air