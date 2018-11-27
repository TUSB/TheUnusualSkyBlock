##############################
### 水遁発動
##############################

effect give @s minecraft:dolphins_grace 180 49
effect give @s minecraft:conduit_power 180 49
effect give @s minecraft:water_breathing 180 49
execute if score @s SupportSkill matches 22022 run function skill_manager:ninja/suiton/affinity/apply

###---演出---Start
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:ambient.underwater.enter master @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.fish.swim master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:splash ~ ~0.5 ~ 0.6 0.2 0.6 0 100 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2f,Duration:20,Color:61183}

###---演出---End
