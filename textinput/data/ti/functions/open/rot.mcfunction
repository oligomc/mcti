execute store result score @s ti.drot run data get entity @s Rotation[0]
scoreboard players operation @s ti.drot -= @s ti.rot
execute unless score @s ti.drot matches 0 run function ti:open/nest