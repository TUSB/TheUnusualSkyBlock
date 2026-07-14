#> makeup:skill/act/white_mage/over_heal/apply
#
# オーバーヒール付与演出
playsound minecraft:entity.zombie_villager.converted player @s ~ ~ ~ 1 2
playsound minecraft:entity.cat.hurt player @s ~ ~ ~ 1 1.6
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 0.5 1.2
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 2
playsound minecraft:entity.player.splash.high_speed player @s ~ ~ ~ 0.8 1.5
particle minecraft:heart ~ ~0.2 ~ 0.8 0.1 0.8 0 20 force
summon minecraft:area_effect_cloud ~ ~ ~ {Particle:{type:"minecraft:entity_effect",color:[1.0,0.66,0.95,1.0]},ReapplicationDelay:40,Radius:1.5f,RadiusPerTick:0.05f,Duration:15}
particle minecraft:instant_effect ~ ~0.2 ~ 1 0.2 1 1 40 force
execute rotated ~ 0 run particle minecraft:witch ^ ^1.5 ^2 0.3 1.5 0.3 0 60 force
execute rotated ~ 0 run particle minecraft:witch ^ ^0.1 ^2 0.8 0.1 0.8 0.1 30 force
execute rotated ~ 0 run summon minecraft:item ^ ^0.3 ^2 {NoGravity:true,Motion:[0d,0.05d,0d],Item:{id:"minecraft:enchanted_golden_apple",count:1b,components:{custom_data:{NoHold:1b}}},Age:5980,PickupDelay:32767}
