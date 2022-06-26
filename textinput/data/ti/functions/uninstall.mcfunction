## unload data pack assets
execute positioned 29999968.0 -64.5 0.0 as @e[dx=0, dy=0, dz=0, type=marker, tag=ti.forceload] at @s run function ti:unload 

## disable data pack
datapack disable "file/textinput"