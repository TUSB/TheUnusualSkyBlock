#Function
effect give @a[distance=..2,gamemode=!creative,gamemode=!spectator] minecraft:blindness 30 0
effect give @a[distance=..2,gamemode=!creative,gamemode=!spectator] minecraft:slowness 30 5
particle ash ~ ~ ~ 0.5 0.5 0.5 1 100 force @a[distance=64,tag=ShowParticles]
particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.2 50 force @a[distance=..64,tag=ShowParticles]
