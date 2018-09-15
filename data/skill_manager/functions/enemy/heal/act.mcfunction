##############################
### ヒール 回復
##############################

execute store result score $AbsorptionAmount Global run data get entity @s AbsorptionAmount 10
scoreboard players operation $AbsorptionAmount Global += $Heal Global
scoreboard players operation $AbsorptionAmount Global < @s MobHPMax
execute store result entity @s AbsorptionAmount int 0.1 run scoreboard players get $AbsorptionAmount Global

###---演出---Start
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.5 0.3 1 15 force
###---演出---End
