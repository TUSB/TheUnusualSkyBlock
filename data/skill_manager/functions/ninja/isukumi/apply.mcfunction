##############################
### 居縮適用
##############################

scoreboard players operation @s Isukumi > $MinValue Global
data merge entity @s {NoAI:true}

###---演出---Start
particle minecraft:dust 0 0 0 3 ~ ~5 ~ 0.2 5 0.2 0 100 force
playsound minecraft:entity.ghast.death master @a[distance=..48] ~ ~ ~ 4 1.414
###---演出---End
