#> item:generate_container_loot/loot/
#ルートテーブルを適用
execute if block ~ ~ ~ #item:lootable_containers if data block ~ ~ ~ LootTable run function item:generate_container_loot/loot/lootable
execute unless block ~ ~ ~ #item:lootable_containers run function item:generate_container_loot/loot/not_lootable
#演出
execute if data block ~ ~ ~ lock.components."minecraft:custom_data".container_loot_table run function makeup:item/generate_container_loot
#container_loot_tableがあるならlockを削除
execute if data block ~ ~ ~ lock.components."minecraft:custom_data".container_loot_table run data remove block ~ ~ ~ lock
