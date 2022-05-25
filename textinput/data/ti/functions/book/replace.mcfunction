## replace player's written_book item with writable_book
item replace entity @s weapon.mainhand from entity @p weapon.mainhand
loot replace entity @p weapon.mainhand loot ti:replace
tellraw @p {"text":"Book cannot be signed! When finished entering text, press the \"Done\" button instead!", "color":"red"}

## revoke ti:sign advancement
advancement revoke @p only ti:sign