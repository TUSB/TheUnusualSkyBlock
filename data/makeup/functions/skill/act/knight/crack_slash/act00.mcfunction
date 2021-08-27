##############################
### 地裂斬発動
##############################

###---演出---Start
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..16] ~ ~ ~ 2 0.5
execute rotated ~ 0 positioned ^ ^ ^0.3 run particle minecraft:dust 1 1 0 0.5 ~ ~1 ~ 0.2 1 0.2 0 200 force @a[tag=ShowParticles]
###---演出---End