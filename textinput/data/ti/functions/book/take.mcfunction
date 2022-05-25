## replace player's written_book with previously held item
# player's previous item is stored in written book's tag.replaces path. Move this data to ti.item's hand and then move the item to the player using item replace.
data modify entity @s HandItems[0] set from storage ti:data item.tag.replaces
item replace entity @p weapon.mainhand from entity @s weapon.mainhand
