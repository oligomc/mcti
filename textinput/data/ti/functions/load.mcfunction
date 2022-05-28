## reset data pack assets
function ti:reset

## load data pack assets
scoreboard objectives add textinput trigger
data merge storage ti:io {in:{book:[""], message: "Open the book and enter your response!", display:1b, command:'execute at 8f966154-c782-4f40-a44f-ad7632b9c700 run tellraw @p {"nbt":"out.plain","storage":"ti:io"}'}, out:{plain:[], json:[]}}
data merge storage ti:data {inv:[], item:{}, comp:{}}
forceload add 29999983 0
summon armor_stand 29999982 -70 0 {UUID:[I;1309862765,1892107847,-1596272901,-1354879722], NoGravity:1b, Marker:1b, Invisible:1b, Invulnerable:1, CustomName:'{"text":"ti", "color":"gold"}'}
summon marker 29999982 -70 0 {UUID:[I;-1885970092,-947761344,-1538282122,851035904], Tags:["ti.marker"], CustomName:'{"text":"ti.marker","color":"gold"}'}
setblock 29999982 -63 1 black_shulker_box
setblock 29999982 -63 2 command_block{Command:"", auto:0b}