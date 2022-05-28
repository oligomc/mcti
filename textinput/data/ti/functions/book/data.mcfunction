## store book pages as plain strings and json components
data modify storage ti:io out.plain set from storage ti:data item.tag.pages
execute store result score #i textinput run data get storage ti:io out.plain
execute if score #i textinput matches 1.. run function ti:book/loop
data modify storage ti:io out.json set from entity @p SelectedItem.tag.display.Lore

## reset player assets
function ti:book/take
scoreboard players reset @p textinput
tag @p remove textinput
execute if data storage ti:io {in:{display:1b}} run title @p reset

## mark player position and run ti:io in.command
tp 8f966154-c782-4f40-a44f-ad7632b9c700 ~ ~ ~
data modify block 29999982 -63 2 auto set value 0b
data modify block 29999982 -63 2 Command set from storage ti:io in.command
data modify block 29999982 -63 2 auto set value 1b