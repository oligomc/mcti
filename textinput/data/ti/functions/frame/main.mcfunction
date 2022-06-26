## raycast to find armor stand
tag @s add ti.frame
scoreboard players set #i ti.register 50
scoreboard players set #found ti.register 0
execute at @s anchored eyes positioned ^ ^ ^0.1 run function ti:frame/loop

## replace item in found armor stand hand
execute as @e[type=#ti:frame, distance=..6, tag=ti.found] run function ti:frame/nest

## revoke ti:frame advancement and remove ti.frame tag
tag @s remove ti.frame
advancement revoke @s only ti:frame