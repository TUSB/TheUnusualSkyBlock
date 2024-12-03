#> player:trigger/void_death/expert
execute as @e[type=item,distance=..10,nbt={Age:0s}] run data modify storage item: Items append from entity @s Item
kill @e[type=item,distance=..10,nbt={Age:0s}]
