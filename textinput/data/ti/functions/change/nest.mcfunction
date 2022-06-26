## if writable_book is in wrong slot then reward change/move advancement, else goto change/nest1
execute store result score #slot ti.register run data get storage ti:data temp.data.item.tag.slot
execute store result score #comp ti.register run data get storage ti:data temp.data.item.Slot
execute if score #comp ti.register = #slot ti.register run function ti:change/nest1
execute unless score #comp ti.register = #slot ti.register run function ti:change/move/main