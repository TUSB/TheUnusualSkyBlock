##############################
### 地面弱点
##############################

function entity_manager:mob_death

###---演出---Start
playsound minecraft:entity.hostile.big_fall master @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:entity.slime.hurt master @a[distance=..16] ~ ~ ~ 1 1.4
particle minecraft:block minecraft:dirt ~ ~0.4 ~ 0.6 0.4 0.6 1 20 force @a[tag=ShowParticles]
###---演出---End
