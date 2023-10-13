#Function
#デバフ
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] mining_fatigue 60 2
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] weakness 180 2
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] slowness 180 2
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] hunger 60 4
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] jump_boost 60 200
effect give @a[distance=..3,gamemode=!creative,gamemode=!spectator] nausea 4 15
#見た目
particle dust 0 0 0.4 2 ~ ~ ~ 1.5 0 1.5 0 20 force @a[distance=..64,tag=ShowParticles]
particle dust 10000 10000 10000 1 ~ ~ ~ 1.5 0.1 1.5 0 10 force @a[distance=..64,tag=ShowParticles]
particle glow ~ ~ ~ 1.5 0 1.5 0 5 force @a[distance=..64,tag=ShowParticles]
