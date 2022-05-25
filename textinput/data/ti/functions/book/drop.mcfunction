## make writable_book immediately pickup-able and only able to be picked up by thrower
data modify entity @s PickupDelay set value 0
data modify entity @s Owner set from entity @s Thrower