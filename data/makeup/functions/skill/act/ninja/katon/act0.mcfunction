playsound minecraft:entity.zombie_villager.cure master @a[distance=..16] ~ ~ ~ 1 1.5
playsound minecraft:entity.generic.extinguish_fire master @a[distance=..16] ~ ~ ~ 1 0.7
playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:flame ~ ~0.1 ~ 0.8 0 0.8 0.01 100 force
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:20,Color:16748800}
