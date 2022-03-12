##############################
### エンティティ ルートドロップ
##############################

#ルート
data modify entity 0-0-0-0-3 DeathLootTable set from storage item: LootTable.Name
loot spawn ~ ~ ~ kill 0-0-0-0-3
#個数を設定
execute if data storage item: LootTable.Count run function entity:loot/set_count
#初期化回避
tag @e[type=item,tag=,distance=0] add Initialized
