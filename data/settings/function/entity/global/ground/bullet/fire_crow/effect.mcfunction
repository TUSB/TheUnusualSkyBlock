#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..2.5] unless block ~ ~ ~ water run tag @s add NowTarget
effect give @a[tag=NowTarget] invisibility 10 3 true
playsound minecraft:entity.blaze.shoot hostile @a[tag=NowTarget] ~ ~ ~ 0.5 0.75
execute as @a[tag=NowTarget] run tag @s remove NowTarget
