#> area:key_block/break
fill ^-1 ^-1 ^ ^1 ^1 ^ air replace barrier
kill @s

function makeup:area/key_block/break

# ルートテーブルが設定されていればアイテム排出
execute if data storage area: key_block.key_item.tag.key_block.LootTable run data modify entity 0-0-0-0-3 DeathLootTable set from storage area: key_block.key_item.tag.key_block.LootTable
execute if data storage area: key_block.key_item.tag.key_block.LootTable run loot spawn ~ ~ ~ kill 0-0-0-0-3

# アイテムディスプレイは少し後で削除
schedule function area:key_block/finish 8t
