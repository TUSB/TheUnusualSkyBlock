#> makeup:skill/act/black_mage/blitz_maneuver/apply
#
# ブリッツマニューバ適用演出
playsound minecraft:entity.wither.hurt player @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.skeleton_horse.death player @a[distance=..16] ~ ~ ~ 0.5 2
playsound minecraft:item.totem.use player @a[distance=..16] ~ ~ ~ 0.5 1.4
particle minecraft:dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[0.0,1.0,0.0],scale:2} ~ ~0.2 ~ 2 0.2 0.2 1 40 force
particle minecraft:dust_color_transition{from_color:[1.0,1.0,0.0],to_color:[0.0,1.0,0.0],scale:2} ~ ~0.2 ~ 0.2 0.2 2 1 40 force
summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:{type:item,item:{id:"minecraft:sunflower"}},ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.5f,Duration:10}
