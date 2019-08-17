##############################
### 死亡時蘇生
##############################

tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 蘇った！"}]
scoreboard players operation @s HP = @s MaxHP
tag 1-0-0-0-0 remove Garbage

###---演出---Start
playsound minecraft:item.totem.use master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.beacon.power_select master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:totem_of_undying ~ ~2.5 ~ 1 1 1 1 100 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"minecraft:end_rod",Radius:0f,RadiusPerTick:1f,Duration:4,WaitTime:0}
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Particle:"minecraft:end_rod",Radius:0f,RadiusPerTick:1f,Duration:6,WaitTime:6}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:end_rod",Radius:0f,RadiusPerTick:1f,Duration:8,WaitTime:14}
###---演出---End
