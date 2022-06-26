scoreboard players reset @a[scores={ti.command=-1}] ti.command
execute if score #queue ti.command matches -1 run data modify block 29999970 -62 3 auto set value false
execute as @a[scores={ti.command=0}] run function ti:change/command/nest