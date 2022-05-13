playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:block.brewing_stand.brew master @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.player.splash.high_speed master @a[distance=..16] ~ ~ ~ 0.8 0.8
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:0.05f,Duration:30,Color:16754929}
particle minecraft:instant_effect ~ ~0.2 ~ 1 0.2 1 1 40 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:white_wool ~ ~3.5 ~ 1 0.1 1 0.5 60 force @a[tag=ShowParticles]
particle minecraft:falling_dust minecraft:pink_wool ~ ~3 ~ 0.6 0.1 0.6 0.5 50 force @a[tag=ShowParticles]
