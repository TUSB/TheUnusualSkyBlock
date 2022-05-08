#Function
particle minecraft:sweep_attack ~ ~ ~ 1 10 1 0 20 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 0 5 ~ ~ ~ 1 10 1 0 20 force @a[distance=..64,tag=ShowParticles]
effect give @a[distance=..2.5] minecraft:levitation 1 30
effect give @a[distance=..2] minecraft:wither 30 1
effect give @a[distance=..2.5] minecraft:blindness 30 0
playsound entity.player.attack.sweep master @a[distance=..64] ~ ~ ~ 1.0 1.0
