##############################
### クレリックナレッジ発動
##############################

###クレリックナレッジ設定
execute if score @s SupportSkill matches 42051 as @a[distance=..10] at @s run effect give @s minecraft:luck 60 4
execute if score @s SupportSkill matches 42052 as @a[distance=..10] at @s run effect give @s minecraft:luck 60 9
execute if score @s SupportSkill matches 42053 as @a[distance=..10] at @s run effect give @s minecraft:luck 60 14
scoreboard players operation @a[distance=..15] ClericKnowledge > $60 Const

###---演出---Start
playsound minecraft:block.beacon.activate master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 1.8
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.note_block.chime master @a[distance=..16] ~ ~ ~ 1 0.4
playsound minecraft:entity.witch.ambient master @a[distance=..16] ~ ~ ~ 1 1.2

execute rotated ~ 0 run summon minecraft:item ^ ^0.5 ^2.5 {NoGravity:true,Motion:[0d,0.005d,0d],Item:{id:"minecraft:writable_book",Count:1b,tag:{Enchantments:[{lvl:1s,id:"minecraft:sharpness"}]}},Age:5930,PickupDelay:32767}
execute rotated ~ 0 run particle minecraft:enchant ^ ^1.2 ^2.5 0 0 0 2 100 force @a[tag=ShowParticles]
execute rotated ~ 0 run particle minecraft:portal ^ ^ ^2.5 0 0 0 2.5 100 force @a[tag=ShowParticles]

execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.15 ~ ~ 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.15 ~ ~ 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~0.58 ~ ~1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~0.58 ~ ~-1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-0.58 ~ ~1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-0.58 ~ ~-1 0 0 0 0.33 0 force @a[tag=ShowParticles]

execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~2 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~-2 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~-1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~1 0 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~-1 0 0 0 0.33 0 force @a[tag=ShowParticles]

execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~2 -0.5 0 -0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~-2 0.5 0 0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~1 -1 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~-1 -0.5 0 0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~1 0.5 0 -0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~-1 1 0 0 0.33 0 force @a[tag=ShowParticles]

execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~2 0.5 0 -0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~ ~ ~-2 -0.5 0 0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~1 -0.5 0 -0.86 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~1.73 ~ ~-1 -1 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~1 1 0 0 0.33 0 force @a[tag=ShowParticles]
execute rotated ~ 0 positioned ^ ^0.2 ^2.5 run particle minecraft:end_rod ~-1.73 ~ ~-1 0.5 0 0.86 0.33 0 force @a[tag=ShowParticles]
###---演出---End
