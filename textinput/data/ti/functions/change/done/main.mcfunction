## add response and command to queue
data modify storage ti:data temp.queue append value {command:"", response:[]}
data modify storage ti:data temp.queue[-1].response set from storage ti:data temp.data.item.tag.pages
data modify storage ti:data temp.queue[-1].command set from storage ti:data temp.data.command
scoreboard players add #queue ti.command 1
scoreboard players operation @s ti.command = #queue ti.command
data modify block 29999970 -62 3 auto set value true
# function delayed to next tick to match tick command block runs on
schedule function ti:change/command/main 1t append

## retrieve player item data and kill marker
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.register] if score @s ti.register = @p[tag=ti.change] ti.register run function ti:change/done/nest

## remove player and marker from registry
scoreboard players operation #min ti.register = @s ti.register
scoreboard players reset @s ti.register
scoreboard players remove @e[predicate=ti:register] ti.register 1
scoreboard players remove #global ti.register 1

## reset player assets
function ti:change/done/take
advancement revoke @s from ti:enable
scoreboard players reset @s ti.inv
execute if data storage ti:io {in:{display:true}} run title @s actionbar {"text":""}