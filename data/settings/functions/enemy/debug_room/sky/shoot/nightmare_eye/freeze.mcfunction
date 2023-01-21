#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest,distance=..5] invisibility 10 4 true

particle dust 0.1 0.9 100000000 23 ~ ~ ~ 0.3 0.4 0.3 0 5 force @a[distance=..64,tag=ShowParticles]
particle minecraft:enchanted_hit ~ ~ ~ 0.3 0.4 0.3 0 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ 0.3 0.4 0.3 0.05 10 force @a[distance=..64,tag=ShowParticles]

playsound entity.splash_potion.break master @a ~ ~ ~ 1.0 2.0 1.0
