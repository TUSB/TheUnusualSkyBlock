#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=5,sort=nearest,distance=..1] invisibility 10 7 true
particle dust{color:[0.616,0.0,100000.0],scale:1} ~ ~ ~ 0.5 0.4 0.5 1 1 force @a[distance=..64,tag=ShowParticles]
