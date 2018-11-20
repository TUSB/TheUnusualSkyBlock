##############################
### ターゲットの最終ダメージを取得する
##############################

execute store result score $CurrentHP Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $LastDamage Global = @s PreviousMobHP
scoreboard players operation $LastDamage Global -= $CurrentHP Global

scoreboard players operation $LastDamage Global += @s LastDamage
