#Function
particle minecraft:dust 0.8 0.8 1 2 ~ ~ ~ 1 1 1 1 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:item_snowball ~ ~ ~ 1 1 1 1 10 force @a[distance=..64,tag=ShowParticles]
particle minecraft:item ice ~ ~ ~ 1 1 1 0.1 10 force @a[distance=..64]
effect give @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] minecraft:hunger 10 20
effect give @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] minecraft:slowness 5 4
effect give @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] minecraft:mining_fatigue 15 9
effect give @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] minecraft:weakness 15 9
effect give @a[distance=..1.5,gamemode=!creative,gamemode=!spectator] minecraft:poison 5 2
