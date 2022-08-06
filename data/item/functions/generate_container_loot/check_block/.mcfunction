#ブロックで分岐
execute if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
#ラージチェスト
execute if block ~ ~ ~ minecraft:chest run function item:generate_container_loot/check_block/chest
