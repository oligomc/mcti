## store book pages as plain string and json component
data modify storage ti:io out.plain set from storage ti:data item.tag.pages
execute store result score #i textinput run data get storage ti:io out.plain
execute if score #i textinput matches 1.. run function ti:book/loop
data modify storage ti:io out.json set from entity @p SelectedItem.tag.display.Lore

## take book from player, remove tag, and remove actionbar
function ti:book/take
tag @p remove ti.book
title @p actionbar {"text":""}

## run ti:out
function ti:out