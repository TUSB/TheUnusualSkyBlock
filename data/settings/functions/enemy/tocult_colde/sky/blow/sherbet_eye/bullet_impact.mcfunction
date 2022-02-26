#Function
particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:item_snowball ~ ~ ~ 1 1 1 10 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:item ice ~ ~ ~ 1 1 1 0.51 100 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0.8 0.8 1 10 ~ ~ ~ 1 1 1 10 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 100 force @a[distance=..64,tag=ShowParticles]
playsound entity.splash_potion.break master @a[distance=..64,tag=ShowParticles] ~ ~ ~ 1.0 2.0 0
