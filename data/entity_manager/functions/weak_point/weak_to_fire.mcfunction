##############################
### 火弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:entity.blaze.burn master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:entity.blaze.shoot master @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.generic.extinguish_fire master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.02 15 force @a[tag=ShowParticles]
particle minecraft:flame ~ ~0.5 ~ 0 0.5 0 0.06 15 force @a[tag=ShowParticles]
###---演出---End
