#> item:generate_container_loot/check_block/chest
#ラージチェスト分岐
execute if block ~ ~ ~ #item:containers[facing=north,type=right] positioned ~-1 ~ ~ if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=north,type=left] positioned ~1 ~ ~ if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=south,type=right] positioned ~1 ~ ~ if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=south,type=left] positioned ~-1 ~ ~ if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=east,type=right] positioned ~ ~ ~-1 if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=east,type=left] positioned ~ ~ ~1 if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=west,type=right] positioned ~ ~ ~1 if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
execute if block ~ ~ ~ #item:containers[facing=west,type=left] positioned ~ ~ ~-1 if data block ~ ~ ~ Lock run function item:generate_container_loot/loot/
