playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.fish.swim master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:splash ~ ~0.5 ~ 0.6 0.2 0.6 0 100 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:20,Color:61183}
