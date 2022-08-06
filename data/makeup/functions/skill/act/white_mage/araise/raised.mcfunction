
execute positioned as @s run playsound minecraft:ui.toast.challenge_complete master @a[distance=..16] ~ ~ ~ 1 1.5
execute positioned as @s run playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 1 2
execute positioned as @s rotated ~ 0 run summon minecraft:item ^ ^7 ^1 {NoGravity:true,Motion:[0d,-0.15d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5830,PickupDelay:32767}
execute positioned as @s run particle minecraft:totem_of_undying ~ ~7 ~ 1 1 1 0 50 force
execute positioned as @s run particle minecraft:instant_effect ~ ~0.5 ~ 0 0 0 0.5 100 force
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:heart",ReapplicationDelay:40,Radius:4.5f,RadiusPerTick:-0.06f,Duration:80}
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"minecraft:entity_effect",ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.04f,Duration:100,Color:16774912}
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Particle:"minecraft:happy_villager",ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.04f,Duration:80}
