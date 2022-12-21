#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..1,sort=nearest,limit=1] run tag @s add NowTarget
execute at @s if block ~ ~ ~ #main:no_collision run tp @a[tag=NowTarget] ~ ~ ~
playsound minecraft:entity.phantom.bite hostile @a[tag=NowTarget] ~ ~ ~ 0.5 0
playsound minecraft:entity.elder_guardian.death hostile @a[tag=NowTarget] ~ ~ ~ 1 2
playsound minecraft:item.trident.return hostile @a[tag=NowTarget] ~ ~ ~ 1 0.5
effect clear @a[tag=NowTarget] water_breathing
effect clear @a[tag=NowTarget] night_vision
effect clear @a[tag=NowTarget] dolphins_grace
effect clear @a[tag=NowTarget] conduit_power
tag @a[tag=NowTarget] remove NowTarget
