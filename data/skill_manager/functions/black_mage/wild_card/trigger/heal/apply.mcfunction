##############################
### ワイルドカード 回復する
##############################

execute store result score $AbsorptionAmount Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $AbsorptionAmount Global += $Heal Global
scoreboard players operation $AbsorptionAmount Global < @s MobHPMax
execute store result entity @s AbsorptionAmount int 0.01 run scoreboard players get $AbsorptionAmount Global
