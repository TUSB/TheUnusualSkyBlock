#Function
effect give @e[distance=..3] minecraft:blindness 10 0
effect give @a[distance=..3] minecraft:slowness 60 2
effect give @a[distance=..3] minecraft:weakness 60 2
effect give @a[distance=..3,gamemode=!creative,gamemode=!survival] minecraft:mining_fatigue 120 3
effect give @a[distance=..3,gamemode=!creative,gamemode=!survival] minecraft:hunger 20 4
effect give @a[distance=..3,gamemode=!creative,gamemode=!survival] minecraft:jump_boost 20 19
effect give @a[distance=..3] minecraft:nausea 20 0
particle minecraft:dust 0.1 0.1 0.2 2 ~ ~ ~ 1.5 0 1.5 0.01 50 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 1 1 0 1.5 ~ ~ ~ 1.5 0 1.5 0.01 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:glow ~ ~ ~ 1.5 0 1.5 1 1 force @a[distance=..64,tag=ShowParticles]
