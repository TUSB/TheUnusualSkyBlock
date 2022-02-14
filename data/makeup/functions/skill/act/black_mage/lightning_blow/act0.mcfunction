
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.6 2
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 30 force @a[tag=ShowParticles]
particle minecraft:totem_of_undying ~ ~4 ~ 0 0 0 0.4 30 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^-0.3 ^1.2 ^0.3 run particle minecraft:dust 0.8 0 1 0.6 ~ ~ ~ 0.15 0.4 0.15 0 50 force @a[tag=ShowParticles]
