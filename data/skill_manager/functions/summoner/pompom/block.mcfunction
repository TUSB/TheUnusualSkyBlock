##############################
### ぽむぽむ花火ブロックにヒット
##############################

kill @s

###---演出---Start
playsound minecraft:entity.firework_rocket.blast master @a[distance=..48] ~ ~ ~ 4 0
playsound minecraft:entity.firework_rocket.twinkle_far master @a[distance=..48] ~ ~ ~ 4 0.8
particle minecraft:dust 100000000 0 0 1.5 ~ ~ ~ 0.5 0.5 0.5 1 15 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 100000000 1.5 ~ ~ ~ 0.5 0.5 0.5 1 15 force @a[tag=ShowParticles]
particle minecraft:dust 0 100000000 0 1.5 ~ ~ ~ 0.5 0.5 0.5 1 15 force @a[tag=ShowParticles]
particle minecraft:smoke ~ ~ ~ 0.8 0.8 0.8 0.03 50 force @a[tag=ShowParticles]
###---演出---End
