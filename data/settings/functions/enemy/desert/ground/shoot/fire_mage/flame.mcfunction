#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=5,sort=nearest,distance=..3] invisibility 10 3 true

particle dust 100000000 0.4 0.1 3 ~ ~ ~ 0.3 0.4 0.3 0 5 force @a[distance=..64,tag=ShowParticles]
particle flame ~ ~ ~ 0.3 0.4 0.3 0.05 20 force @a[distance=..64,tag=ShowParticles]
