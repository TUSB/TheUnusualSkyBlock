
playsound minecraft:entity.wither.hurt master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.skeleton_horse.death master @a[distance=..16] ~ ~ ~ 0.5 2
playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 0.5 1.4
particle minecraft:dust{color:[1f,100000000f,-10000000f],scale:2.0f} ~ ~0.2 ~ 2 0.2 0.2 1 40 force
particle minecraft:dust{color:[1f,100000000f,-10000000f],scale:2.0f} ~ ~0.2 ~ 0.2 0.2 2 1 40 force
summon minecraft:area_effect_cloud ~ ~1 ~ {ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.5f,Duration:10,Particle:{type:"minecraft:item",item:"minecraft:sunflower"}}
