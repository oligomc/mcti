## replace player's held item with writable book for text input
# ti:trigger gives entity writable book with {input:1b} tag which stores the previously held item data stored in the "replaces" tag. The inventory slot the item is merged into is stored in the "slot" tag. 
# player joins ti.book team so they are not selected again in following ticks
item replace entity @s weapon.mainhand from entity @p weapon.mainhand
loot replace entity @s weapon.mainhand loot ti:trigger
data modify entity @s HandItems[0].tag.slot set from entity @p SelectedItemSlot
item replace entity @p weapon.mainhand from entity @s weapon.mainhand
scoreboard players reset @p textinput
tag @p add ti.book