#Function
# appearance
particle minecraft:glow ~ ~ ~ 2 0 2 0 1 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 0 0 0.3 3 ~ ~ ~ 2 0 2 1 2 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 100000 100000 100000 1 ~ ~ ~ 2 0 2 0 30 force @a[distance=..64,tag=ShowParticles]
particle minecraft:witch ~ ~ ~ 0 0 0 0.5 3 force @a[distance=..64,tag=ShowParticles]

# debuff
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] blindness 10 0
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] mining_fatigue 30 5
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] weakness 60 2
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] slowness 30 5
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] hunger 50 4
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] nausea 10 0
effect give @a[distance=..5,gamemode=!creative,gamemode=!spectator,sort=nearest] wither 15 3
