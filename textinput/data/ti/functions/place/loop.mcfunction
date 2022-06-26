## if ray hits lectern then store book data, else iterate
scoreboard players remove #i ti.register 1
execute if block ~ ~ ~ minecraft:lectern run function ti:place/replace
execute unless score #i ti.register matches ..0 unless block ~ ~ ~ minecraft:lectern positioned ^ ^ ^0.1 run function ti:place/loop
