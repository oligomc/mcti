## unload data pack assets
scoreboard objectives remove ti.command
scoreboard objectives remove ti.register
scoreboard objectives remove ti.rot
scoreboard objectives remove ti.drot
scoreboard objectives remove ti.inv
advancement revoke @a from ti:enable
data remove storage ti:io in
data remove storage ti:io out
data remove storage ti:data temp
tag @a[tag=ti.change] remove ti.change
tag @a[tag=ti.frame] remove ti.frame
tag @a[tag=ti.give] remove ti.give
tag @a[tag=ti.open] remove ti.open
tag @a[tag=ti.remove] remove ti.remove
tag @a[tag=ti.sign] remove ti.sign
clear @a writable_book{textinput:true}
clear @a written_book{textinput:true}
execute align xyz run kill @e[dx=0, dy=-1, dz=0, tag=ti.register]
# if no other forceload entities exist in chunk, remove forceload
tag @s remove global.forceload
execute align xyz unless entity @e[dx=15, dy=319, dz=15, tag=global.forceload] run forceload remove ~ ~
kill @s