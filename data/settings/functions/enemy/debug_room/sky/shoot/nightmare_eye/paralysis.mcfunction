#Function
effect give @a[gamemode=!creative,gamemode=!spectator,limit=1,sort=nearest,distance=..5] invisibility 10 5 true
particle minecraft:dust 0.9 1 0 1 ~ ~ ~ 1 1 1 0 20 force

playsound entity.firework_rocket.twinkle_far master @a ~ ~ ~ 1.0 2.0 1.0
