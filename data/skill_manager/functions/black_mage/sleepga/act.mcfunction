##############################
### スリプガ発動
##############################

tag @s add CastSleepga
#視線検知
execute positioned ^ ^ ^12 as @e[tag=Mob,distance=..12] positioned as @s positioned ^ ^ ^1000 facing entity @a[tag=CastSleepga,limit=1] eyes positioned ^ ^ ^1000 positioned ~-1 ~-1 ~-1 if entity @s[dx=1,dy=1,dz=1] run tag @s add SleepgaTarget

execute positioned as @e[tag=SleepgaTarget,limit=1,sort=nearest] as @e[tag=Mob,distance=..8] unless score @s SleepgaTime matches 1.. positioned as @s run function skill_manager:black_mage/sleepga/sleep
execute unless entity @e[tag=SleepgaTarget,limit=1] as @e[tag=Mob,distance=..8] unless score @s SleepgaTime matches 1.. positioned as @s run function skill_manager:black_mage/sleepga/sleep

###---演出---Start
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.bubble_column.upwards_ambient master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.evoker.prepare_summon master @a[distance=..16] ~ ~ ~ 1 1.2
execute positioned as @e[tag=SleepgaTarget,limit=1,sort=nearest] run particle minecraft:cloud ~ ~ ~ 1.5 1.5 1.5 0.3 100 force @a[tag=ShowParticles]
execute unless entity @e[tag=SleepgaTarget,limit=1] run particle minecraft:cloud ~ ~ ~ 1.5 1.5 1.5 0.3 100 force @a[tag=ShowParticles]
###---演出---End

tag @s remove CastSleepga
tag @e[tag=SleepgaTarget] remove SleepgaTarget
