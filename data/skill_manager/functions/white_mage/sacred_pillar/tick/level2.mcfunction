##############################
### セイクリッドピラー発動中レベル２
##############################

###---演出---Start
execute rotated ~ 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force
execute rotated ~60 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force
execute rotated ~120 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force
execute rotated ~180 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force
execute rotated ~-120 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force
execute rotated ~-60 0 run particle minecraft:instant_effect ^ ^ ^2.5 0 4 0 0 10 force

particle minecraft:end_rod ~ ~ ~ 1.5 0.1 1.5 0 25 force
particle minecraft:end_rod ~ ~ ~ 0.3 3.0 0.3 0 20 force
###---演出---End

###ダメージ
scoreboard players operation $Damage Global = @s PillarDamage
function calc_manager:apply_damage_modifier
execute positioned ~-2.5 ~-5 ~-2.5 run scoreboard players operation @e[dx=4,dy=10,dz=4,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] Damage > $Damage Global
scoreboard players set $Count PillarCount 0
execute positioned ~-2.5 ~-5 ~-2.5 as @e[dx=4,dy=10,dz=4,tag=Mob,nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run scoreboard players add $Count PillarCount 1
scoreboard players operation @s PillarCount -= $Count PillarCount
