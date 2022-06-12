##############################
### エンティティ ルートドロップ
##############################

#個数を設定 上限99個 ルートテーブルの個数は上書きされる
execute store result score _ _ run data get storage item: LootTable.CountRange
scoreboard players add _ _ 1
scoreboard players operation _ Calc %= _ _
execute store result score @s _ run data get storage item: LootTable.Count
scoreboard players operation _ Calc += @s _
#loot_table ループ
execute if data storage item: LootTable.Loot if score _ Calc matches 1.. run data modify entity 0-0-0-0-3 DeathLootTable set from storage item: LootTable.Loot
execute if data storage item: LootTable.Loot if score _ Calc matches 1.. run function entity:loot/loot/loot_table
#item
execute if data storage item: LootTable.Item if score _ Calc matches 1.. run loot spawn ~ ~ ~ loot minecraft:blocks/acacia_button
execute if data storage item: LootTable.Item if score _ Calc matches 1.. run data modify entity @e[type=item,tag=,distance=0,limit=1] Item merge from storage item: LootTable.Item
#初期化回避
execute as @e[type=item,tag=,distance=0] if data entity @s Item.tag.SpawnEntities run function enemy:spawn/item_to_spawn
tag @e[type=item,tag=,distance=0] add Initialized
