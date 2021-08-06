playsound minecraft:entity.zombie_villager.converted master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.cat.hurt master @a[distance=..16] ~ ~ ~ 1 1.6
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1.2
particle minecraft:heart ~ ~0.2 ~ 0.8 0.1 0.8 0 20 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:witch ^ ^1.5 ^2 0.3 1.5 0.3 0 60 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:witch ^ ^0.1 ^2 0.8 0.1 0.8 0.1 30 force @a[tag=ShowParticles]
execute rotated ~ 0 run summon minecraft:item ^ ^0.3 ^2 {NoGravity:true,Motion:[0d,0.05d,0d],Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5960,PickupDelay:32767}
