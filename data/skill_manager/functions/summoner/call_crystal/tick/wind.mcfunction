##############################
### クリスタルWindパーティクル
##############################

###---演出---Start
execute if entity @s[tag=Particle] rotated ~30 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~90 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~150 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-150 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-90 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-30 0 run particle minecraft:dust 0.6015625 0.80078125 0.1953125 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
###---演出---End

execute if entity @s[tag=Attack,nbt={PortalCooldown:40}] run function skill_manager:summoner/call_crystal/attack/wind
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:summoner/call_crystal/return/common
