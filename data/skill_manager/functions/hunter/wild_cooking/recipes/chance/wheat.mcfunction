##############################
### パンorケーキ
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
scoreboard players operation $Chance Global = $Random Global
scoreboard players remove $Chance Global 90
execute if score $Chance Global matches ..-1 run give @s minecraft:bread 1
execute if score $Chance Global matches 0.. run give @s minecraft:cake 1
