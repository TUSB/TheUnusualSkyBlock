#Function
particle minecraft:dust 0 0 0.3 2 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1 1 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1 0 1 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 5 0 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 5 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 5 0 1 ~ ~0.5 ~ 0 0 0 1 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:falling_dust black_concrete ~ ~ ~ 0.1 0.1 0.1 0 1 force @a[distance=..64,tag=ShowParticles]

#周囲のモブに耐性付与
effect give @e[distance=..20,tag=Mob] minecraft:resistance 1 1
