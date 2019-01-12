##############################
### ウィザー弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:entity.silverfish.death master @a[distance=..16] ~ ~ ~ 0.6 0.8
playsound minecraft:entity.squid.squirt master @a[distance=..16] ~ ~ ~ 0.6 1
particle minecraft:dust 0.3 0.3 -1 1.5 ~ ~1 ~ 0.6 0.6 0.6 1 30 force @a[tag=ShowParticles]
particle minecraft:large_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0.1 10 force
###---演出---End
