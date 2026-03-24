#> makeup:skill/act/white_mage/buffall/act0
#
# バオル発動演出

playsound minecraft:ambient.underwater.exit player @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.ambient player @a[distance=..16] ~ ~ ~ 3 0
playsound minecraft:block.lava.pop player @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:lava ~ ~ ~ 0.4 0 0.4 1 10 force
particle minecraft:splash ~ ~0.5 ~ 0.6 0.2 0.6 0 100 force
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:-28416},ReapplicationDelay:40,Radius:2.4f,Duration:10}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"entity_effect",color:-16716033},ReapplicationDelay:40,Radius:2.4f,Duration:10,Color:61183}
execute rotated ~ 0 run summon minecraft:item ^0.6 ^2.4 ^1 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather", count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":1s},"minecraft:custom_data":{NoHold:1b}}},Age:5960,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:item ^-1 ^2.2 ^0.6 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather", count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":1s},"minecraft:custom_data":{NoHold:1b}}},Age:5940,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:item ^0.3 ^2 ^-0.8 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather", count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":1s},"minecraft:custom_data":{NoHold:1b}}},Age:5950,PickupDelay:32767}
