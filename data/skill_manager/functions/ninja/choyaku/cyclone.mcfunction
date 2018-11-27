##############################
### 跳躍ダメージ
##############################

### 10 35 100 250
execute if score @s Choyaku matches 1..4 run scoreboard players set $Damage Global 1000
execute if score @s Choyaku matches 5..14 run scoreboard players set $Damage Global 3500
execute if score @s Choyaku matches 15..24 run scoreboard players set $Damage Global 10000
execute if score @s Choyaku matches 25..35 run scoreboard players set $Damage Global 25000
function skill_manager:damage_modifier/apply

scoreboard players operation @e[distance=..9,tag=Mob] Damage > $Damage Global

###---演出---Start
particle minecraft:cloud ~ ~ ~ 2.7 0 2.7 0 90 force @a[tag=ShowParticles]
playsound minecraft:entity.witch.throw master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0.7
###---演出---End
