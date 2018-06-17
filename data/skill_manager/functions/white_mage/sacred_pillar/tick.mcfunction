##############################
### セイクリッドピラー発動中
##############################

###---演出---Start
execute rotated ~ 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force
execute rotated ~60 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force
execute rotated ~120 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force
execute rotated ~180 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force
execute rotated ~-120 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force
execute rotated ~-60 0 run particle minecraft:instant_effect ^ ^ ^1.414 0 4 0 0 10 force

particle minecraft:end_rod ~ ~ ~ 1.2 0.1 1.2 0 20 force
particle minecraft:end_rod ~ ~ ~ 0.3 2.5 0.3 0 20 force
###---演出---End

###ダメージ
execute positioned ~-1.414 ~-4 ~-1.414 run scoreboard players operation @e[dx=1.828,dy=8,dz=1.828,tag=Mob] Damage += @s PillarDamage
scoreboard players set $Count PillarCount 0
execute positioned ~-1.414 ~-4 ~-1.414 as @e[dx=1.828,dy=8,dz=1.828,tag=Mob] run scoreboard players add $Count PillarCount 1
scoreboard players operation @s PillarCount -= $Count PillarCount

###消滅演出
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:white_mage/sacred_pillar/failure
execute if score @s PillarCount matches ..0 run function skill_manager:white_mage/sacred_pillar/failure
execute if score @s PillarCount matches ..0 run kill @s
