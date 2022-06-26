## if ray hits armor_stand then count success, else iterate
scoreboard players remove #i ti.register 1
execute store success score #found ti.register as @e[type=armor_stand, dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run tag @s add ti.found
execute unless score #i ti.register matches ..0 unless score #found ti.register matches 1 positioned ^ ^ ^0.1 run function ti:give/loop
