#> makeup:skill/act/white_mage/clear/act0
#
# キアリク演出
playsound minecraft:entity.guardian.ambient_land player @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.turtle.egg_hatch player @a[distance=..16] ~ ~ ~ 1 0.8
playsound minecraft:entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:item{item:turtle_egg} ~ ~0.3 ~ 1.2 0.2 1.2 0.1 100 force
particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 20 force
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:[0.93,1.00,0.93,1.00]},ReapplicationDelay:40,Radius:2f,Duration:10}
