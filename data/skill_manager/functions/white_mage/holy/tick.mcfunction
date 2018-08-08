##############################
### ホーリー飛翔時
##############################

###ホーリーダメージ設定
execute if score @s ProjectileSkill matches 41051 at @s run scoreboard players set $Damage Global 1000000
execute if score @s ProjectileSkill matches 41052 at @s run scoreboard players set $Damage Global 1500000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[distance=..5,tag=Mob,tag=Dead] Damage += $Damage Global
scoreboard players operation $Damage Global /= $4 Const
scoreboard players operation @e[distance=..5,tag=Mob,tag=Living] Damage += $Damage Global

###---演出---Start
particle minecraft:end_rod ~ ~ ~ 1 0 0 0.2 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.2 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.2 0 force
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.2 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.2 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.2 0 force

particle minecraft:end_rod ~ ~ ~ 1 0 0 0.1 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.1 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.1 0 force
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.1 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.1 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.1 0 force

particle minecraft:end_rod ~ ~ ~ 1 0 0 0.05 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 1 0 0.05 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 1 0.05 0 force
particle minecraft:end_rod ~ ~ ~ -1 0 0 0.05 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 -1 0 0.05 0 force
particle minecraft:end_rod ~ ~0.4 ~ 0 0 -1 0.05 0 force

particle minecraft:entity_effect ~ ~ ~ 2 2 2 1000000000 40 force
execute if entity @e[distance=..5,tag=Mob,limit=1] run playsound minecraft:block.beacon.power_select master @a[distance=..48] ~ ~ ~ 4 2
###---演出---End
