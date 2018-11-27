##############################
### 夜駆レベル２
##############################

effect give @s minecraft:night_vision 60 0
effect give @s minecraft:absorption 60 1

###---演出---Start
playsound minecraft:entity.skeleton_horse.gallop_water master @a[distance=..16] ~ ~ ~ 1 
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 0.7 0
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 0.7 0.6
particle minecraft:smoke ~ ~0.4 ~ 1 0.4 1 0 200 force @a[tag=ShowParticles]
###---演出---End
