execute if score @s SkyWalk matches 5 run playsound minecraft:entity.bat.loop master @s ~ ~ ~ 1 1.2
execute if score @s SkyWalk matches 2 run playsound minecraft:entity.bat.takeoff master @s ~ ~ ~ 1 0.8
execute unless score @s SkyWalk matches 0.. run playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 0.4
particle minecraft:instant_effect ~ ~0.1 ~ 1 0 1 0 10 force @a[tag=ShowParticles]
particle minecraft:end_rod ~ ~ ~ 1 0 1 0 5 force @a[tag=ShowParticles]
summon minecraft:item ^0.6 ^1.2 ^1 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5960,PickupDelay:32767}
summon minecraft:item ^-1 ^1 ^0.6 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5940,PickupDelay:32767}
summon minecraft:item ^0.3 ^0.8 ^-0.8 {NoGravity:true,Motion:[0d,-0.1d,0d],Item:{id:"minecraft:feather",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5950,PickupDelay:32767}
