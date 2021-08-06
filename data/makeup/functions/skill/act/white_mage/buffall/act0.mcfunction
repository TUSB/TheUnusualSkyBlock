playsound minecraft:ambient.underwater.exit master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.fire.ambient master @a[distance=..16] ~ ~ ~ 3 0
playsound minecraft:block.lava.pop master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:lava ~ ~ ~ 0.4 0 0.4 1 10 force @a[tag=ShowParticles]
particle minecraft:splash ~ ~0.5 ~ 0.6 0.2 0.6 0 100 force @a[tag=ShowParticles]
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2.4f,Duration:10,Color:16748800}
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:2.4f,Duration:10,Color:61183}
execute rotated ~ 0 run summon minecraft:item ^0.6 ^2.4 ^1 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5960,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:item ^-1 ^2.2 ^0.6 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5940,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:item ^0.3 ^2 ^-0.8 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5950,PickupDelay:32767}
