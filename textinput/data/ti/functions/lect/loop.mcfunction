## if ray hits lectern then store book data, else iterate
scoreboard players remove #i textinput 1
execute if block ~ ~ ~ minecraft:lectern run function ti:lect/return
execute unless score #i textinput matches ..0 unless block ~ ~ ~ minecraft:lectern positioned ^ ^ ^0.1 run function ti:lect/loop
