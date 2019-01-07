##############################
### ルートテーブル適用
##############################

execute store result score $TableLength Global run data get entity @s DeathLootTable
execute if score $TableLength Global matches 15.. run tag @s add ApplyTable

#1.14用-VBAと合わせて
#execute if score $TableLength Global matches 15.. run data modify entity @s DeathLootTable set from block 0 0 0 LootTable
