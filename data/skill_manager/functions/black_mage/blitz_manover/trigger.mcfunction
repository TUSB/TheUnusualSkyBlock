##############################
### ブリッツマニューバトリガー
##############################

scoreboard players set @s SkillInterval 0

execute if score @s BlitzManover matches ..999 run scoreboard players set @s BlitzManover 0
execute if score @s BlitzManover matches 1000.. run scoreboard players remove @s BlitzManover 1000

###---演出---Start
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:item.trident.riptide_3 master @a[distance=..16] ~ ~ ~ 1 1.1
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 1 2
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust -1 -100 100000000 2 ^ ^0.5 ^3 2 0 0 1 10 force @a[tag=ShowParticles]
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust -1 -100 100000000 2 ^ ^2 ^3 0 2 0 1 10 force @a[tag=ShowParticles]
execute as @e[limit=5,sort=random] rotated as @s rotated ~ 0 run particle minecraft:dust -1 -100 100000000 2 ^ ^0.5 ^3 0 0 2 1 10 force @a[tag=ShowParticles]

###---演出---End
