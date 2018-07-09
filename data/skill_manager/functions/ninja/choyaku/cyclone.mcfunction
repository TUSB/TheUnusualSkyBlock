##############################
### 跳躍ダメージ
##############################

scoreboard players operation $Damage Global = @s Choyaku
scoreboard players operation $Damage Global *= $Damage Global
scoreboard players operation $Damage Global *= $50 Const

scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global

###---演出---Start
particle minecraft:cloud ~ ~ ~ 1.5 0 1.5 0 50 force
playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.7
###---演出---End
