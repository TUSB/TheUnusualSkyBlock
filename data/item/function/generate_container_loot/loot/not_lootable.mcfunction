#> item:generate_container_loot/loot/not_lootable
#ItemsにLockのルートテーブルを適用する
data remove entity 0-0-0-0-3 DeathLootTable
data modify entity 0-0-0-0-3 DeathLootTable set from block ~ ~ ~ Lock
execute in area:control_area run data remove block 2 2 2 Items
execute in area:control_area run loot replace block 2 2 2 container.0 kill 0-0-0-0-3
execute in area:control_area run data modify storage item: Items set from block 2 2 2 Items
data modify block ~ ~ ~ Items set from storage item: Items
#コンテナ破壊処理
execute if data block ~ ~ ~ Items[].components."minecraft:custom_data".BreakContainer run setblock ~ ~ ~ air destroy
