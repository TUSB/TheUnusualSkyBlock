##############################
### 地裂斬適用
##############################

###---演出---Start
particle minecraft:block minecraft:magma_block ~ ~ ~ 0.3 2 0.3 0 30 force @a[tag=ShowParticles]
particle minecraft:dust 0.543 0.270 0.074 3 ~ ~ ~ 0.1 0 0.1 0 3 force @a[tag=ShowParticles]
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0.5
###---演出---End
