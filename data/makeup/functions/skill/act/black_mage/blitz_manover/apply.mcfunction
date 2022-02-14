
playsound minecraft:entity.wither.hurt master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.skeleton_horse.death master @a[distance=..16] ~ ~ ~ 0.5 2
playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 0.5 1.4
particle minecraft:dust 1 100000000 -10000000 2 ~ ~0.2 ~ 2 0.2 0.2 1 40 force @a[tag=ShowParticles]
particle minecraft:dust 1 100000000 -10000000 2 ~ ~0.2 ~ 0.2 0.2 2 1 40 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"minecraft:item minecraft:sunflower",ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.5f,Duration:10}
