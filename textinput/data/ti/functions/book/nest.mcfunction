## if writable_book "pages" tag was changed then store page data, else break
data modify storage ti:data comp set from storage ti:data item.tag.pages
execute store success score #pages textinput run data modify storage ti:data comp set from storage ti:io in.book
execute if score #pages textinput matches 1 run function ti:book/data