## run ti:open/rot for all players with ti:open advancement
execute as @a[predicate=ti:open] run function ti:open/rot

## if player removes book from inventory then return it
execute as @a[predicate=ti:remove] store success score @s ti.inv if data entity @s Inventory[{tag:{textinput:true}}]
execute as @a[predicate=ti:remove,scores={ti.inv=0},limit=1] at @s run function ti:remove/main