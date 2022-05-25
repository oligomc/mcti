## if player opens an external inventory with a writable_book then close inventory
# for some dumb reason predicates can't detect a player's tag so I have to do it this way...
execute at @a[tag=ti.book, advancements={ti:gui=true}, limit=1] run function ti:gui/main
advancement revoke @a[advancements={ti:gui=true}] only ti:gui

## if player places writable_book in lectern then replace book
# if player places book in lectern, raycast to lectern to grab book data, merge data back into player, and remove book from lectern
execute at @a[tag=ti.book, advancements={ti:lect=true}, limit=1] run function ti:lect/main

## if player changes writable_book then determine change
# a book "change" is any of the following:
# 1. player updates "pages" tag of book (book text is changed and "Done" button is pressed in book GUI)
# 2. player picks up book after dropping it
# 3. player moves book to new slot within own inventory
# each event is detected in single advancement using inventory_changed trigger
execute at @a[tag=ti.book, advancements={ti:change=true}, limit=1] run function ti:book/main

## if player signs writable_book then replace writable_book
# signing is detected using single advancement using inventory_changed trigger
execute at @a[tag=ti.book, advancements={ti:sign=true}, limit=1] run function ti:book/replace

## if player triggered textinput then give writable_book
# cannot use advancement function reward because not all players will have permission to run commands
execute at @a[predicate=ti:trigger, limit=1] run function ti:book/give