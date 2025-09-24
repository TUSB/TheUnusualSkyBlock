#Function
particle dust{color:[1.0,2.1,100000000.0],scale:1.5} ~ ~ ~ 3 1 3 0 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:firework ~ ~ ~ 3 1 3 0 5 force @a[distance=..64,tag=ShowParticles]
execute unless block ~ ~ ~ #block:no_collision
