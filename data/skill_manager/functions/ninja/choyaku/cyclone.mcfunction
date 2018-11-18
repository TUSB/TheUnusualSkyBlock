##############################
### 跳躍ダメージ
##############################

### 5  15  25  35
###20  90 200 350 25 112.5 250 437.5
scoreboard players operation $Damage Global = @s Choyaku
scoreboard players operation $Damage Global *= $2 Const
scoreboard players add $Damage Global 30
scoreboard players operation $Damage Global *= @s Choyaku
scoreboard players operation $Damage Global *= $10 Const
function calc_manager:apply_damage_modifier

scoreboard players operation @e[distance=..9,tag=Mob] Damage > $Damage Global

###---演出---Start
particle minecraft:cloud ~ ~ ~ 2.7 0 2.7 0 90 force
playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.7
###---演出---End
