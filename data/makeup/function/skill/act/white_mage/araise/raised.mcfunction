#> makeup:skill/act/white_mage/araise/raised
#
# レイズ復活演出
execute positioned as @s run playsound minecraft:ui.toast.challenge_complete player @a[distance=..16] ~ ~ ~ 1 1.5
execute positioned as @s run playsound minecraft:entity.firework_rocket.launch player @a[distance=..16] ~ ~ ~ 1 2
execute positioned as @s rotated ~ 0 run summon minecraft:item ^ ^7 ^1 {NoGravity:true,Motion:[0d,-0.15d,0d],Item:{id:"minecraft:feather",count:1,components:{enchantment_glint_override:true,custom_data:{NoHold:1b}}},Age:5900,PickupDelay:32767}
execute positioned as @s run particle minecraft:totem_of_undying ~ ~7 ~ 1 1 1 0 50 force
execute positioned as @s run particle minecraft:instant_effect ~ ~0.5 ~ 0 0 0 0.5 100 force
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:heart"},ReapplicationDelay:40,Radius:4.5f,RadiusPerTick:-0.06f,Duration:60}
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:entity_effect",color:[1.00,0.97,0.00,1.00]},ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.04f,Duration:75}
execute positioned as @s run summon minecraft:area_effect_cloud ~ ~0.1 ~ {Particle:{type:"minecraft:happy_villager"},ReapplicationDelay:40,Radius:1f,RadiusPerTick:0.04f,Duration:60}
