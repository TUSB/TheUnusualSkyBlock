##############################
### セキュリティレーザーLv1
##############################

playsound minecraft:entity.blaze.death master @a[distance=..16] ~ ~ ~ 1 0
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Radius:0f,Particle:"minecraft:block minecraft:air",Tags:["Initializing"]}
scoreboard players set $LoopCount Global 20
execute at @s anchored eyes run tp @e[tag=Initializing,limit=1] ^ ^ ^ ~ ~
execute rotated as @s as @e[tag=Initializing,limit=1] positioned as @s run function skill_manager:enemy/security_laser/1/loop
tag @e[tag=Initializing,limit=1] remove Initializing
tag @a[tag=Applied] remove Applied
