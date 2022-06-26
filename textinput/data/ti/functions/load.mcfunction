## unload data pack assets
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.forceload] at @s run function ti:unload 

## load data pack assets
scoreboard objectives add ti.command dummy {"text":"Text Input Command Queue", "color":"yellow"}
scoreboard objectives add ti.register dummy {"text":"Text Input ID Register", "color":"yellow"}
scoreboard objectives add ti.rot dummy {"text":"Text Input Rotation", "color":"yellow"}
scoreboard objectives add ti.drot dummy {"text":"Text Input Delta Rotation", "color":"yellow"}
scoreboard objectives add ti.inv dummy {"text":"Text Input Inventory Check", "color":"yellow"}
scoreboard players set #queue ti.command -1
scoreboard players set #global ti.register -1
data merge storage ti:io {in:{book:[""], message: "Open the book and enter your response!", display:true, command:'execute as @a[scores={ti.command=-1}] run tellraw @s {"nbt":"out","storage":"ti:io"}'}, out:[]}
data merge storage ti:data {temp:{data:{item:{}, command:"", book:[]}, bin:{one:[], two:[]}, inv:[], swap:{}, comp:{}, queue:[]}}
# chunk just before default world border in +x direction
forceload add 29999968 0
summon marker 29999968 -64 0 {Tags:["ti.forceload", "global.forceload", "global.ignore", "global.ignore.kill"], CustomName:'{"text":"ti.forceload", "color":"yellow"}'}
fill 29999968 -64 0 29999972 -60 6 minecraft:bedrock replace
setblock 29999970 -62 2 minecraft:yellow_shulker_box
setblock 29999970 -62 3 minecraft:repeating_command_block{Command:"", auto:false}

## REMOVE
scoreboard objectives setdisplay sidebar ti.register