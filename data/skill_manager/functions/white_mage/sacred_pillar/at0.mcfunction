##############################
### セイクリッドピラー接地
##############################

execute if score @s PillarDamage matches 1.. run function skill_manager:white_mage/sacred_pillar/success
execute if score @s PillarDamage matches ..0 run function skill_manager:white_mage/sacred_pillar/failure
tag @s remove SacredPillar

###直撃誤検知回避
execute positioned ~-1.414 ~-4 ~-1.414 run scoreboard players reset @e[dx=1.828,dy=8,dz=1.828,tag=Mob] ProjectileSkill
