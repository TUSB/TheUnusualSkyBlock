##############################
### ステップチェック
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $10000 Const
execute store result score $Threshold Global run data get entity @s Attributes[0].Modifiers[1].Amount 100
execute if score $Random Global < $Threshold Global run function enemy_manager:swim/step/turn
