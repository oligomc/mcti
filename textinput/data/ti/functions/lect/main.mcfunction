## raycast to lectern
scoreboard players set #i textinput 50
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.1 run function ti:lect/loop

## revoke ti:lect advancement and send message
advancement revoke @p only ti:lect
tellraw @p {"text":"Cannot place text response book in lectern","color":"red"}