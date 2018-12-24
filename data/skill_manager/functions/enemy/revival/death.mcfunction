##############################
### 死亡時蘇生
##############################

me は 蘇った！
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get @s MobHPMax
tag @s remove Garbage
tag @s remove Revival

###---演出---Start
playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:totem_of_undying ~ ~0.8 ~ 0 0 0 0.6 30 force @a[tag=ShowParticles]
###---演出---End
