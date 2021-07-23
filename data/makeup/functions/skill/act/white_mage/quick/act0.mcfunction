playsound minecraft:item.trident.hit_ground master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.hit_ground master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.hit_ground master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.riptide_2 master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 1 2
execute rotated ~ 0 run particle minecraft:sweep_attack ^ ^0.5 ^2.5 0 0.2 0 1 10 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:totem_of_undying ^ ^7 ^2.5 3 0 3 0 100 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:totem_of_undying ^ ^0.5 ^2.5 0 0 0 1 50 force @a[tag=ShowParticles]
execute rotated ~ 0 run summon minecraft:item ^ ^0.5 ^2.5 {NoGravity:true,Motion:[0d,0.005d,0d],Item:{id:"minecraft:clock",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5930,PickupDelay:32767}
execute rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^2.5 {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:0.075f,Duration:40,Color:16056148}
