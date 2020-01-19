#ストラクチャーブロック設置
setblock ~ ~ ~ minecraft:structure_block{mode:LOAD,name:"",ignoreEntities:0b} replace
#name代入
data modify block ~ ~ ~ name set from block 0 0 0 RecordItem.tag.BlockEntityTag.name

#向きをランダム化
function calc_manager:update_random
scoreboard players operation $Random Global %= $8 Const

execute if score $Random Global matches 0 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"NONE",posX:0,posZ:0}
execute if score $Random Global matches 1 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"CLOCKWISE_90",posX:15,posZ:0}
execute if score $Random Global matches 2 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"CLOCKWISE_180",posX:15,posZ:15}
execute if score $Random Global matches 3 run data merge block ~ ~ ~ {mirror:"NONE",rotation:"COUNTERCLOCKWISE_90",posX:0,posZ:15}
execute if score $Random Global matches 4 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"NONE",posX:0,posZ:15}
execute if score $Random Global matches 5 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_90",posX:0,posZ:0}
execute if score $Random Global matches 6 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"CLOCKWISE_180",posX:15,posZ:0}
execute if score $Random Global matches 7 run data merge block ~ ~ ~ {mirror:"LEFT_RIGHT",rotation:"COUNTERCLOCKWISE_90",posX:15,posZ:15}
#実行
setblock ~ ~1 ~ minecraft:redstone_block
