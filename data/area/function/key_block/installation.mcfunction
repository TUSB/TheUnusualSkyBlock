#> area:key_block/installation
data modify storage area: key_block.Facing set from entity @s Facing
data modify storage area: key_block.item set from entity @s Item
data modify storage area: key_block.Rotation set from entity @s Rotation

# 額縁の向きに合わせてキーブロックの操作記録エンティティを召喚する
execute if data storage area: key_block{Facing:0b} at @s align y run summon interaction ~ ~0.99 ~ {height:0.01f,Tags:[KeyBlock,KeyBlock.Key]}
execute if data storage area: key_block{Facing:1b} at @s align y run summon interaction ~ ~-1 ~ {width:1f,height:1.01f,Tags:[KeyBlock,KeyBlock.Key]}
execute if data storage area: key_block{Facing:2b} at @s align yz run summon interaction ~ ~ ~1.49 {width:1f,height:1f,Tags:[KeyBlock,KeyBlock.Key]}
execute if data storage area: key_block{Facing:3b} at @s align yz run summon interaction ~ ~ ~-0.49 {width:1f,height:1f,Tags:[KeyBlock,KeyBlock.Key]}
execute if data storage area: key_block{Facing:4b} at @s align xy run summon interaction ~1.49 ~ ~ {width:1f,height:1f,Tags:[KeyBlock,KeyBlock.Key]}
execute if data storage area: key_block{Facing:5b} at @s align xy run summon interaction ~-0.49 ~ ~ {width:1f,height:1f,Tags:[KeyBlock,KeyBlock.Key]}

# アイテムディスプレイを召喚する
execute if data storage area: key_block{Facing:0b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[0f,1f,0f],left_rotation:{axis:[1f,0f,0f],angle:4.712f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute if data storage area: key_block{Facing:1b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[0f,-1f,0f],left_rotation:{axis:[1f,0f,0f],angle:1.571f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute if data storage area: key_block{Facing:2b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[0f,0f,1f],left_rotation:{axis:[0f,1f,0f],angle:0f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute if data storage area: key_block{Facing:3b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[0f,0f,-1f],left_rotation:{axis:[0f,1f,0f],angle:3.141f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute if data storage area: key_block{Facing:4b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[1f,0f,0f],left_rotation:{axis:[0f,1f,0f],angle:1.571f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}
execute if data storage area: key_block{Facing:5b} at @s align xyz run summon item_display ~0.5 ~0.5 ~0.5 {CustomNameVisible:1b,Tags:[KeyBlock,KeyBlock.Block],item:{id:"minecraft:air",Count:1b},transformation:{translation:[-1f,0f,0f],left_rotation:{axis:[0f,1f,0f],angle:4.712f},right_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f]}}

# 表示するアイテムを指定する
execute at @s run data modify entity @e[tag=KeyBlock.Block,distance=..1.5,limit=1,sort=nearest] item set from storage area: key_block.item
# アイテムの名前を表示する
execute at @s run data modify entity @e[tag=KeyBlock.Block,distance=..1.5,limit=1,sort=nearest] CustomName set from storage area: key_block.item.tag.display.Name
# 向きを記録
execute at @s run data modify entity @e[tag=KeyBlock.Key,distance=..1.5,limit=1,sort=nearest] Rotation set from storage area: key_block.Rotation

kill @s
