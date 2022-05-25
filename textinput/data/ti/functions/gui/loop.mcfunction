## if ray hits container then close container, else iterate
scoreboard players remove #i textinput 1
execute if block ~ ~ ~ #ti:container run function ti:gui/close
execute unless score #i textinput matches ..0 unless block ~ ~ ~ #ti:container positioned ^ ^ ^0.1 run function ti:gui/loop
