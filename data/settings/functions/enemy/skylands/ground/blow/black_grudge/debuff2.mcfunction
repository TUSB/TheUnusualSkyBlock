#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..3] unless entity @s[tag=Curse] run tag @s add NowTarget
effect give @a[tag=NowTarget] invisibility 10 7 true
playsound minecraft:entity.wither.spawn hostile @a[tag=NowTarget] ~ ~ ~ 0.5 1.75
execute as @a[tag=NowTarget] run tag @s remove NowTarget
