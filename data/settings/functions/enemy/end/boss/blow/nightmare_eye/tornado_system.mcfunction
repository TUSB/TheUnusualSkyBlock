#Function
particle minecraft:sweep_attack ~ ~ ~ 1 10 1 0 20 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 0.3 3 ~ ~ ~ 1 10 1 0 20 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1000000 1000000 1000000 1.5 ~ ~ ~ 1 10 1 0 20 force @a[distance=..64,tag=ShowParticles]
effect give @a[distance=..2.5] minecraft:levitation 1 30
effect give @a[distance=..2,gamemode=!creative,gamemode=!survival] minecraft:wither 30 5
effect give @a[distance=..2.5,gamemode=!creative,gamemode=!survival] minecraft:blindness 30 0
playsound entity.player.attack.sweep master @a[distance=..64] ~ ~ ~ 0.7 1.0 0
