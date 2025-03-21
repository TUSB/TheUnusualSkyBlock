#Function
particle dust{color:[1.0,0.5,100000000.0],scale:2} ~ ~ ~ 3 1 3 0 10 force @a[distance=..64,tag=ShowParticles]
particle witch ~ ~ ~ 3 1 3 0 5 force @a[distance=..64,tag=ShowParticles]
execute unless block ~ ~ ~ #block:no_collision
