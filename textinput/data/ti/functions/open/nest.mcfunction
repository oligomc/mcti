## store data in storage and give target writable_book
function ti:enable/book

## update ti.register data
execute as @e[x=29999968.0, dx=0, y=-64.5, dy=0, z=0.0, dz=0, type=marker, tag=ti.register] if score @s ti.register = @p[tag=ti.open] ti.register run data modify entity @s data set from storage ti:data temp.data

## reset tags and scoreboards
scoreboard players reset @s ti.rot
scoreboard players reset @s ti.drot
tag @s remove ti.open

## revoke ti:gui/open advancement
advancement revoke @s only ti:open