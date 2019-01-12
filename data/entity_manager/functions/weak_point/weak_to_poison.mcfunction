##############################
### 毒弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.elder_guardian.hurt master @a[distance=..16] ~ ~ ~ 1 1.4
particle minecraft:dust 0 1.5 0 1 ~ ~1 ~ 0.3 0.7 0.3 1 15 force @a[tag=ShowParticles]
###---演出---End
