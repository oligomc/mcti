## store data in storage and give target writable_book
data modify storage ti:data temp.data.command set from storage ti:io in.command
data modify storage ti:data temp.data.book set from storage ti:io in.book
function ti:enable/book

## add player and new marker to registry
# marker is given writable_book data from entity in case item is lost from inventory (dropped, used in inventory crafter, etc.)
# tag is added to player to prevent incorrect player selected if at same position
scoreboard players add #global ti.register 1
scoreboard players operation @s ti.register = #global ti.register
summon marker 29999968 -64 0 {Tags:["ti.register", "ti.new", "global.ignore", "global.ignore.kill"], CustomName:'{"text":"ti.register", "color":"yellow"}'}
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.new] run function ti:enable/nest

## display message if in.display is true
# can't wait for the day Mojang finally fixes the actionbar to respect title times... see https://bugs.mojang.com/browse/MC-106167
# title @s times 0 2147483647 0
execute if data storage ti:io {in:{display:true}} run title @s actionbar {"nbt":"in.message", "storage":"ti:io"}
scoreboard players set @s ti.inv 1