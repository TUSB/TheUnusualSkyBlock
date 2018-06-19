##############################
### クリスタルDarkパーティクル
##############################

###---演出---Start
execute if entity @s[tag=Particle] rotated ~30 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~90 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~150 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-150 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-90 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
execute if entity @s[tag=Particle] rotated ~-30 0 run particle minecraft:dust 0 0 0 0.75 ^ ^1.5 ^1 0 1.25 0 0 7 force
###---演出---End

execute if score @s SkillAttribute matches 61071..61079 if entity @s[nbt={PortalCooldown:40}] run function skill_manager:summoner/call_crystal/attack/dark
execute if score @s SkillAttribute matches 61091..61099 if entity @s[nbt={PortalCooldown:40}] run function skill_manager:summoner/call_crystal/enhance/dark
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:summoner/call_crystal/return/common
