## if player opens an external inventory with a writable_book then close inventory
execute at @a[predicate=ti:gui, limit=1] run function ti:gui/main

## if player places writable_book in lectern then replace book
# if player places book in lectern, raycast to lectern to grab book data, merge data back into player, and remove book from lectern
execute at @a[predicate=ti:lect, limit=1] run function ti:lect/main

## if player changes writable_book then determine change
# a book "change" is any of the following:
# 1. player updates "pages" tag of book (book text is changed and "Done" button is pressed in book GUI)
# 2. player picks up book after dropping it
# 3. player moves book to new slot within own inventory
# each event is detected in single advancement using inventory_changed trigger
execute at @a[predicate=ti:change, limit=1] run function ti:book/main

## if player signs writable_book then replace writable_book
# signing is detected using single advancement using inventory_changed trigger
execute at @a[predicate=ti:sign, limit=1] run function ti:book/replace

## if player triggered textinput then give writable_book
# cannot use advancement function reward because not all players will have permission to run commands
execute at @a[predicate=ti:trigger, tag=!textinput, limit=1] run function ti:book/give