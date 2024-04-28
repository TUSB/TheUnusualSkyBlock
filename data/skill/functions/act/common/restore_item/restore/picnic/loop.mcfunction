
summon item ~ ~ ~ {Tags:[Initializing],PickupDelay:0s,Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=Initializing,distance=0,limit=1] Item set from storage item: Items[-1]
tag @e[distance=0,tag=Initializing] remove Initializing
data remove storage item: Items[-1]

execute if data storage item: Items[-1] run function skill:act/common/restore_item/restore/picnic/loop
