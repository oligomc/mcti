## clear writable_book and store player inventory data
# inventory data is stored again due to potential data overwrite in the time between advancement reward and tick function
clear @s writable_book{textinput:1b}
data modify storage ti:data temp.inv set from entity @s Inventory
execute store result score #len ti.register run data get storage ti:data temp.inv

## if there are items other than writable_book in target inventory goto change/move/nest, else goto change/move/lone
execute if score #len ti.register matches 0 run function ti:change/move/lone
execute if score #len ti.register matches 1.. run function ti:change/move/nest

## revoke ti:change advancement
advancement revoke @s from ti:change