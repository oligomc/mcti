## if writable_book "pages" tag was changed then store page data, else break
# Check if pages are same is necessary because this can also be triggered by dropping writable_book without changing the book text
data modify storage ti:data temp.comp set from storage ti:data temp.data.item.tag.pages
execute store success score #pages ti.register run data modify storage ti:data temp.comp set from storage ti:io in.book
execute if score #pages ti.register matches 1 run function ti:change/done/main

## reset player assets
advancement revoke @s from ti:change