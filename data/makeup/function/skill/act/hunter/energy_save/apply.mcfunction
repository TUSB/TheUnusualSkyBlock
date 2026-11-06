#> makeup:skill/act/hunter/energy_save/apply
#
# エナジーセーブ発動

playsound minecraft:block.brewing_stand.brew player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.brewing_stand.brew player @a[distance=..16] ~ ~ ~ 1 0.5
playsound minecraft:entity.cat.ambient player @a[distance=..16] ~ ~ ~ 0.5 1.5
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:entity_effect",color:-14024833},Radius:3f,Duration:15}
