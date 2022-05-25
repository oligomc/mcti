## raycast to container block
scoreboard players set #i textinput 50
execute positioned ~ ~1.62 ~ positioned ^ ^ ^0.1 run function ti:gui/loop

## revoke ti:change and ti:gui advancements
advancement revoke @p only ti:change
advancement revoke @p only ti:gui