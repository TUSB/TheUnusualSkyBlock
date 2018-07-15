##############################
### りんごor金リンゴ
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
scoreboard players operation $Chance Global = $Random Global
scoreboard players remove $Chance Global 90
execute if score $Chance Global matches ..-1 if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run give @s minecraft:golden_apple 1
execute if score $Chance Global matches 0.. if entity @s[nbt={Inventory:[{id:"minecraft:gold_block"}]}] run give @s minecraft:enchanted_golden_apple 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:gold_block"}]}] run give @s minecraft:apple 1
execute if entity @s[nbt=!{Inventory:[{id:"minecraft:gold_block"}]}] run scoreboard players set $Chance Global -999
clear @s minecraft:gold_block 1
