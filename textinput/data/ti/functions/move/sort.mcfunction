## append item to proper bin
# bins correspond to following slots:
# one: 0 to 8 (hotbar)
# two: 9 to 35 (inventory)
# three: -106 & 100 to 103 (offhand and armor)
execute if score #comp textinput matches ..8 run function ti:move/bin/low
execute unless score #comp textinput matches ..8 run function ti:move/bin/high
