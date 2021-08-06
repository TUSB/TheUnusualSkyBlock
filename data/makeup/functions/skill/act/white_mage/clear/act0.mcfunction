playsound minecraft:entity.guardian.ambient_land master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.turtle.egg_hatch master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.experience_orb.pickup master @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:item minecraft:turtle_egg ~ ~0.3 ~ 1.2 0.2 1.2 0.1 100 force @a[tag=ShowParticles]
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:10,Color:15597549}
