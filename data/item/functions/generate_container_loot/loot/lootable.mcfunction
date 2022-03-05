#container.0にLockのルートテーブルを適用する
data remove entity 0-0-0-0-3 DeathLootTable
data modify entity 0-0-0-0-3 DeathLootTable set from block ~ ~ ~ Lock
data modify block ~ ~ ~ LootTable set value "minecraft:empty"
loot replace block ~ ~ ~ container.0 kill 0-0-0-0-3
#演出
function makeup:item/generate_container_loot
