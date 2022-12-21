#Function
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..6] run tag @s add NowTarget
effect give @a[tag=NowTarget] slowness 8 4 true
playsound minecraft:block.beacon.deactivate hostile @a[tag=NowTarget] ~ ~ ~ 1 0
playsound minecraft:entity.puffer_fish.blow_out hostile @a[tag=NowTarget] ~ ~ ~ 1 0
tag @a[tag=NowTarget] remove NowTarget
