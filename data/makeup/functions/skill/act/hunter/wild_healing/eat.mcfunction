
playsound minecraft:entity.parrot.imitate.ender_dragon master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 1 1.5
particle minecraft:heart ~ ~ ~ 0.8 0.2 0.8 1 10 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"minecraft:entity_effect",Radius:1.5f,Duration:15,Color:16731405}
