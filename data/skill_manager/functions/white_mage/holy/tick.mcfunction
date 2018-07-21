##############################
### ホーリー飛翔時
##############################

###ホーリーダメージ設定
execute if score @s ProjectileSkill matches 41051 at @s run scoreboard players set $Damage Global 5000
execute if score @s ProjectileSkill matches 41052 at @s run scoreboard players set $Damage Global 10000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global

###---演出---Start
particle minecraft:block minecraft:white_wool ~ ~ ~ 0.2 0.2 0.2 0 7 force
particle minecraft:item minecraft:blue_ice ~ ~ ~ 0.2 0.2 0.2 0.15 7 force
particle dust 0.3 0.7 100000000 2 ~ ~ ~ 0 0 0 1 1 force
playsound minecraft:block.glass.break master @a[distance=..48] ~ ~ ~ 3 2
###---演出---End
