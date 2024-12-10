#> item:generate_container_loot/loot/
#ルートテーブルを適用
execute if block ~ ~ ~ #item:lootable_containers if data block ~ ~ ~ LootTable run function item:generate_container_loot/loot/lootable
execute unless block ~ ~ ~ #item:lootable_containers run function item:generate_container_loot/loot/not_lootable
#16文字以上ならLockを削除
execute store result score _ _ run data get block ~ ~ ~ Lock
execute if score _ _ matches 16.. run data remove block ~ ~ ~ Lock
#演出
execute if score _ _ matches 16.. run function makeup:item/generate_container_loot
