#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3.5] run tag @s add NowTarget
effect give @a[tag=NowTarget] mining_fatigue 5 1
effect give @a[tag=NowTarget] slowness 5 1
effect give @a[tag=NowTarget] poison 10 4
execute as @a[tag=NowTarget] run tag @s remove NowTarget
