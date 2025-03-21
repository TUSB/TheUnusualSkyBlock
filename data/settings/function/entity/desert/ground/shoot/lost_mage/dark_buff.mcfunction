#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=5,sort=nearest,distance=..1] blindness 60 0
particle dust{color:[0.1,0.1,0.3],scale:1} ~ ~ ~ 0.5 0.4 0.5 1 1 force @a[distance=..64,tag=ShowParticles]
