##############################
### 居縮適用
##############################

function skill_manager:ninja/isukumi/stop

###---演出---Start
particle minecraft:dust 0 0 0 3 ~ ~5 ~ 0.2 5 0.2 0 100 force @a[tag=ShowParticles]
playsound minecraft:entity.ghast.death master @a[distance=..48] ~ ~ ~ 4 1.414
###---演出---End
