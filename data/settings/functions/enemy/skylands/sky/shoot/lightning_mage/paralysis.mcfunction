#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=5,sort=nearest,distance=..5] invisibility 10 5 true

particle dust 100000000 100000000 2 2 ~ ~ ~ 0.3 0.4 0.3 0 5 force @a[distance=..64,tag=ShowParticles]
particle electric_spark ~ ~ ~ 0.3 0.4 0.3 0.05 20 force @a[distance=..64,tag=ShowParticles]
particle totem_of_undying ~ ~ ~ 0.3 0.4 0.3 0.05 1 force @a[distance=..64,tag=ShowParticles]
