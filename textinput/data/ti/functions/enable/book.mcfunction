## store selected item  and other data in storage
execute if data entity @s SelectedItem run data modify storage ti:data temp.data.replaced set from entity @s SelectedItem
execute unless data entity @s SelectedItem run data modify storage ti:data temp.data.replaced set value {id:"minecraft:air", Count:1b}
data modify storage ti:data temp.data.replaced.Slot set from entity @s SelectedItemSlot

## overwrite selected item with textinput book and store in storage
loot replace entity @s weapon.mainhand loot ti:enable
data modify storage ti:data temp.data.item set from entity @s SelectedItem
data modify storage ti:data temp.data.item.Slot set from storage ti:data temp.data.item.tag.slot
