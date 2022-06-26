## store response in storage and command in command block
# command block is run after function reward from inventory_changed advancement (all commands in this function file). (See https://gist.github.com/misode/77ee37217a69a3c74032679d8084d6c6#file-tick_order-md)
data modify block 29999970 -62 3 Command set from storage ti:data temp.queue[0].command
data modify storage ti:io out set from storage ti:data temp.queue[0].response

## remove data from queue
data remove storage ti:data temp.queue[0]
# remove score only from players that have a score. I thought there would be an easier way to do this but using the "*" selector targets every name instead of those that just have a ti.command score...
scoreboard players remove @a[scores={ti.command=-2147483648..2147483647}] ti.command 1
scoreboard players remove #queue ti.command 1
# main is scheduled again next tick to remove player with -1 score and to check for anyone else on queue
schedule function ti:change/command/main 1t