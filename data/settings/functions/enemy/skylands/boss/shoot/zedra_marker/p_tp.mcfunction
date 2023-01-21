#Function
execute as @a[distance=..64] facing ^ ^1 ^3 positioned ^ ^ ^4 facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
effect clear @a[tag=BossFixed] blindness
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Tick set value 5
