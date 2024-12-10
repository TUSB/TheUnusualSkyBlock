#> item:generate_container_loot/check_block/
#ブロックで分岐
function item:generate_container_loot/loot/
#ラージチェスト
execute if block ~ ~ ~ minecraft:chest run function item:generate_container_loot/check_block/chest
