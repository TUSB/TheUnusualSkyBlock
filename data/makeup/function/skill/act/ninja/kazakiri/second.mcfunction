#> makeup:skill/act/ninja/kazakiri/second
#
# 風切毎秒演出

execute if score @s Kazakiri matches 5 run playsound minecraft:entity.bat.loop player @s ~ ~ ~ 1 1.2
execute if score @s Kazakiri matches 2 run playsound minecraft:entity.bat.takeoff player @s ~ ~ ~ 1 0.8
execute unless score @s Kazakiri matches 0.. run playsound minecraft:entity.ender_dragon.flap player @s ~ ~ ~ 1 0.4
particle minecraft:instant_effect ~ ~0.1 ~ 1 0 1 0 10 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ 1 0 1 0 5 force @a[tag=ShowParticles]
summon minecraft:item ^0.6 ^1.2 ^1 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",components:{enchantment_glint_override:true}},Age:5940,PickupDelay:32767}
summon minecraft:item ^-1 ^1 ^0.6 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",components:{enchantment_glint_override:true}},Age:5940,PickupDelay:32767}
summon minecraft:item ^0.3 ^0.8 ^-0.8 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",components:{enchantment_glint_override:true}},Age:5940,PickupDelay:32767}
