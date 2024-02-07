#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2] unless score @s PalsyLevel matches 0.. run tag @s add NowTarget
effect give @a[tag=NowTarget] invisibility 10 5 true
execute at @a[tag=NowTarget] run particle dust 100000000 100000000 4 0.75 ~ ~1 ~ 0.4 0.75 0.4 0 30 force @a[distance=..32]
execute as @a[tag=NowTarget] run tag @s remove NowTarget
