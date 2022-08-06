
playsound minecraft:block.anvil.use master @a[distance=..10] ~ ~ ~ 1 0.5
execute rotated ~ 0 run summon minecraft:item ^ ^1.2 ^0.5 {NoGravity:1b,Item:{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5950,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:happy_villager ^ ^1.2 ^0.5 0.2 0.3 0.2 1 14 force
