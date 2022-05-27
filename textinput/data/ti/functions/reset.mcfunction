## remove data pack assets
scoreboard objectives remove textinput
advancement revoke @a only ti:change
advancement revoke @a only ti:sign
advancement revoke @a only ti:gui
advancement revoke @a only ti:lect
data remove storage ti:io in
data remove storage ti:io out
data remove storage ti:data inv
data remove storage ti:data item
data remove storage ti:data comp
data remove storage ti:data bin
clear @a writable_book{input:1b}
tag @a[tag=textinput] remove textinput
fill 0 -64 0 1 -64 0 air
setblock 0 -64 1 air
kill 4e12eb6d-70c7-4647-a0da-cefbaf3e2d16
kill 8f966154-c782-4f40-a44f-ad7632b9c700
forceload remove 0 0