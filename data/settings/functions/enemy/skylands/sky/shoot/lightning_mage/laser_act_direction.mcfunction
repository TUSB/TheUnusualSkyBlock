#Function
playsound minecraft:entity.firework_rocket.twinkle hostile @a[distance=..64] ~ ~ ~ 1 2
particle minecraft:electric_spark ~ ~ ~ 1 1 1 0.07 10 force 
particle minecraft:scrape ~ ~ ~ 0 0 0 0.5 50 force 
particle minecraft:enchant ~ ~ ~ 0 0 0 0.5 40 force
particle dust 100000000 100000000 2 2 ~ ~ ~ 0.5 0.5 0.5 0.5 50 force @a[distance=..64,tag=ShowParticles]
