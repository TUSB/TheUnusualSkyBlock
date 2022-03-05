#ルートテーブルを適用
execute if block ~ ~ ~ #item:lootable_containers if data block ~ ~ ~ LootTable run function item:generate_container_loot/loot/lootable
execute unless block ~ ~ ~ #item:lootable_containers run function item:generate_container_loot/loot/not_lootable
#Lockを削除
data remove block ~ ~ ~ Lock
