
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force @a[tag=ShowParticles]
particle minecraft:dust 255 255 255 0.5 ~ ~ ~ 0.2 0.2 0.2 0 6 force @a[tag=ShowParticles]
execute as @a[distance=..16] run playsound minecraft:item.trident.return master @s ~ ~64 ~ 8 2
