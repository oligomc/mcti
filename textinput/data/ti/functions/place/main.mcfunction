## raycast to lectern
scoreboard players set #i ti.register 50
execute at @s anchored eyes positioned ^ ^ ^0.1 run function ti:place/loop

## revoke ti:place advancement and send message
advancement revoke @s only ti:place