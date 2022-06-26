## raycast to find armor stand
tag @s add ti.give
scoreboard players set #i ti.register 50
scoreboard players set #found ti.register 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function ti:give/loop

## replace item in found armor stand hand
execute as @e[type=armor_stand, distance=..6, tag=ti.found] run function ti:give/nest

## revoke ti:give advancement and remove ti.give tag
tag @s remove ti.give
advancement revoke @s only ti:give