#Function
particle minecraft:sweep_attack ~ ~ ~ 1 0 1 0 50 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 0.3 2 ~ ~ ~ 1 0 1 0 50 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1000000 1000000 1000000 1.5 ~ ~ ~ 1 0 1 0 20 force @a[distance=..64,tag=ShowParticles]
playsound entity.shulker_bullet.hurt master @a[distance=..64] ~ ~ ~ 0.7 1.0
