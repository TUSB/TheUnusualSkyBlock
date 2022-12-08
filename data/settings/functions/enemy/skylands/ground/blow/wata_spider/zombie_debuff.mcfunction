#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5,sort=nearest,limit=1] run tag @s add NowTarget
effect give @a[tag=NowTarget] mining_fatigue 5 2
effect give @a[tag=NowTarget] slowness 5 2
effect give @a[tag=NowTarget] poison 5 6
execute as @a[tag=NowTarget] run tag @s remove NowTarget
