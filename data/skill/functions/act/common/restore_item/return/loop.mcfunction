
summon item ~ ~ ~ {Tags:[RestoreItem,Initialized],Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[tag=RestoreItem,limit=1,distance=0] Item set from storage tusb_player: RestoreItem.Items[-1]
tag @e[tag=RestoreItem,distance=0] remove RestoreItem
data remove storage tusb_player: RestoreItem.Items[-1]

execute if data storage tusb_player: RestoreItem.Items[-1] run function skill:act/common/restore_item/return/loop
