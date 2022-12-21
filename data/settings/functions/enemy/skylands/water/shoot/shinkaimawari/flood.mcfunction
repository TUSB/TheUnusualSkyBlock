#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1,sort=nearest,limit=1] run tag @s add NowTarget
execute as @a[tag=NowTarget] at @s run particle dust 0 1 100000000 1.2 ~ ~2 ~ 0.1 1.5 0.1 0 50 force @a[distance=..32]
execute as @a[tag=NowTarget] at @s run particle dust 0 1 100000000 1 ~ ~1 ~ 0.35 0.8 0.35 0 50 force @a[distance=..32]
execute as @a[gamemode=survival,tag=NowTarget] at @s run fill ~ ~ ~ ~ ~4 ~ water[level=1] replace air
playsound minecraft:entity.fish.swim hostile @a[tag=NowTarget] ~ ~ ~ 1 0
playsound minecraft:entity.player.swim hostile @a[tag=NowTarget] ~ ~ ~ 0.7 0
playsound minecraft:entity.player.swim hostile @a[tag=NowTarget] ~ ~ ~ 0.7 0.5
effect clear @a[tag=NowTarget] water_breathing
effect clear @a[tag=NowTarget] night_vision
effect clear @a[tag=NowTarget] dolphins_grace
effect clear @a[tag=NowTarget] conduit_power
effect clear @a[tag=NowTarget] haste
effect clear @a[tag=NowTarget] resistance
tag @a[tag=NowTarget] remove NowTarget
