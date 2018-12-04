##############################
### 死亡時蘇生
##############################

me は 蘇った！
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get @s MobHPMax
tag @s remove Garbage
tag @s remove Revival

###---演出---Start
playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 1 1
###---演出---End
