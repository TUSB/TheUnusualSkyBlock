##############################
### 夜駆レベル６
##############################

effect give @s minecraft:night_vision 60 0
effect give @s minecraft:absorption 60 14
effect give @s minecraft:haste 60 11
effect give @s minecraft:resistance 60 4

###---演出---Start
playsound minecraft:entity.wolf.howl master @a[distance=..16] ~ ~ ~ 0.3 1
playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.7 2
playsound minecraft:item.elytra.flying master @a[distance=..16] ~ ~ ~ 0.7 1.2
playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 0.7 2
playsound minecraft:entity.skeleton_horse.gallop_water master @a[distance=..16] ~ ~ ~ 1 
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.phantom.ambient master @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:large_smoke ~ ~0.4 ~ 2 0.4 2 0 300 force @a[tag=ShowParticles]
particle minecraft:dust -1000 -1000 -1000 2 ~ ~0.4 ~ 2 0.4 2 1 50 force @a[tag=ShowParticles]

###---演出---End
