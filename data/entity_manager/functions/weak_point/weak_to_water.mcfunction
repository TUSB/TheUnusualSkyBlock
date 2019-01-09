##############################
### 水弱点
##############################

kill @s

###---演出---Start
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:splash ~ ~1 ~ 0.4 1 0.4 0 20 force @a[tag=ShowParticles]
###---演出---End
