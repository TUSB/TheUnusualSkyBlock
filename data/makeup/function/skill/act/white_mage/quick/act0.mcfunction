#> makeup:skill/act/white_mage/quick/act0
#
# クイック発動時演出
playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.hit_ground player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.riptide_2 player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.thunder player @a[distance=..16] ~ ~ ~ 1 2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.5 ^2.5 0 0.2 0 1 10 force
execute rotated ~ 0 run particle minecraft:totem_of_undying ^ ^7 ^2.5 3 0 3 0 100 force
execute rotated ~ 0 run particle minecraft:totem_of_undying ^ ^0.5 ^2.5 0 0 0 1 50 force
execute rotated ~ 0 run summon minecraft:item ^ ^0.5 ^2.5 {NoGravity:true,Motion:[0d,0.005d,0d],Item:{id:"minecraft:clock",count:1b,components:{enchantment_glint_override:true,custom_data:{NoHold:1b}}},Age:5930,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Particle:{type:"minecraft:entity_effect",color:[0.96,1.00,0.33,1.00]},ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:0.075f,Duration:40}
