#> item:generate_container_loot/loot/lootable
#container.0にLockのルートテーブルを適用する
data remove entity 0-0-0-0-3 DeathLootTable
data modify entity 0-0-0-0-3 DeathLootTable set from block ~ ~ ~ LootTable
data modify block ~ ~ ~ LootTable set value "minecraft:empty"
loot replace block ~ ~ ~ container.0 kill 0-0-0-0-3
#コンテナ破壊処理
execute if data block ~ ~ ~ Items[].components."minecraft:custom_data".BreakContainer run setblock ~ ~ ~ air destroy
