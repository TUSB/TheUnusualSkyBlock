#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1.5,sort=nearest,limit=1] unless score @s DoomCount matches 1..31 run tag @s add NowTarget
effect give @a[tag=NowTarget] invisibility 10 1 true
playsound minecraft:entity.wither.spawn hostile @a[tag=NowTarget] ~ ~ ~ 0.5 1.75
execute as @a[tag=NowTarget] run tag @s remove NowTarget
