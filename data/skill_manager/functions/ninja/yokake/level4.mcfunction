##############################
### 夜駆レベル４
##############################

effect give @s minecraft:night_vision 60 0
effect give @s minecraft:absorption 60 5
effect give @s minecraft:haste 60 3
effect give @s minecraft:resistance 60 0

###---演出---Start
playsound minecraft:item.elytra.flying master @a[distance=..16] ~ ~ ~ 0.7 1.2
playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 0.7 2
playsound minecraft:entity.skeleton_horse.gallop_water master @a[distance=..16] ~ ~ ~ 1 
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:large_smoke ~ ~0.4 ~ 1 0.4 1 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 0.6 2 ~ ~0.4 ~ 1 0.4 1 1 30 force @a[tag=ShowParticles]
###---演出---End
