##############################
### エンティティ ルートドロップ
##############################

#ルート
execute if data storage item: LootTable.Loot run data modify entity 0-0-0-0-3 DeathLootTable set from storage item: LootTable.Loot
execute if data storage item: LootTable.Loot run loot spawn ~ ~ ~ kill 0-0-0-0-3

execute if data storage item: LootTable.Item run loot spawn ~ ~ ~ loot minecraft:blocks/acacia_button
execute if data storage item: LootTable.Item run data modify entity @e[type=item,tag=,distance=0,limit=1] Item merge from storage item: LootTable.Item
#個数を設定
execute if data storage item: LootTable.Count run function entity:loot/set_count
#初期化回避
execute as @e[type=item,tag=,distance=0] if data entity @s Item.tag.SpawnEntities run function enemy:spawn/item_to_spawn
tag @e[type=item,tag=,distance=0] add Initialized
