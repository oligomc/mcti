## reset data pack assets
function ti:reset

## load data pack assets
forceload add 0 0
scoreboard objectives add textinput trigger
data merge storage ti:io {in:{book:[""], message: "Open the book and enter your response!"}, out:{plain:[], json:[]}}
data merge storage ti:data {inv:[], item:{}, comp:{}}
summon armor_stand 0 -70 0 {Tags:["ti.item"], NoGravity:1b, Marker:1b, Invisible:1b, CustomName:'{"text":"ti", "color":"gold"}'}
setblock 0 -64 0 black_shulker_box