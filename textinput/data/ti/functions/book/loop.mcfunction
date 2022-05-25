## convert each plain text element to json component
item modify entity @p weapon.mainhand ti:lore
data remove storage ti:data item.tag.pages[0]
scoreboard players remove #i textinput 1
execute unless score #i textinput matches 0 run function ti:book/loop
