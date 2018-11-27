##############################
### フォトニックレーザー毎tick処理
##############################

scoreboard players operation @e[distance=..3.5,tag=Mob] Damage > @s SkillAttribute

###---演出---Start
execute if score $Second Count matches 1 run playsound minecraft:entity.guardian.attack master @a[distance=..16] ~ ~ ~ 2 2
execute if score $Second Count matches 11 run playsound minecraft:entity.guardian.attack master @a[distance=..16] ~ ~ ~ 2 2

scoreboard players add @s PhotonicTick 1
scoreboard players operation @s PhotonicTick %= $18 Const
scoreboard players operation $Timer Global = @s PhotonicTick

execute if score $Timer Global matches 1 run particle minecraft:happy_villager ^0.3045 ^3.486 ^0.111111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 2 run particle minecraft:happy_villager ^0.6055 ^3.444 ^0.222222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 3 run particle minecraft:happy_villager ^0.903 ^3.3775 ^0.333333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 4 run particle minecraft:happy_villager ^1.197 ^3.2865 ^0.444444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 5 run particle minecraft:happy_villager ^1.477 ^3.171 ^0.555555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 6 run particle minecraft:happy_villager ^1.75 ^3.031 ^0.666666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 7 run particle minecraft:happy_villager ^2.0055 ^2.8665 ^0.777777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 8 run particle minecraft:happy_villager ^2.247 ^2.681 ^0.888888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 9 run particle minecraft:happy_villager ^2.4745 ^2.4745 ^1 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 10 run particle minecraft:happy_villager ^2.681 ^2.247 ^1.11111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 11 run particle minecraft:happy_villager ^2.8665 ^2.0055 ^1.22222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 12 run particle minecraft:happy_villager ^3.031 ^1.75 ^1.33333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 13 run particle minecraft:happy_villager ^3.171 ^1.477 ^1.44444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 14 run particle minecraft:happy_villager ^3.2865 ^1.197 ^1.55555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 15 run particle minecraft:happy_villager ^3.3775 ^0.903 ^1.66666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 16 run particle minecraft:happy_villager ^3.444 ^0.6055 ^1.77777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 17 run particle minecraft:happy_villager ^3.486 ^0.3045 ^1.88888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 0 run particle minecraft:happy_villager ^3.5 ^0 ^0 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 1 run particle minecraft:happy_villager ^3.486 ^-0.308 ^0.111111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 2 run particle minecraft:happy_villager ^3.444 ^-0.609 ^0.222222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 3 run particle minecraft:happy_villager ^3.3775 ^-0.9065 ^0.333333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 4 run particle minecraft:happy_villager ^3.2865 ^-1.2005 ^0.444444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 5 run particle minecraft:happy_villager ^3.171 ^-1.4805 ^0.555555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 6 run particle minecraft:happy_villager ^3.031 ^-1.75 ^0.666666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 7 run particle minecraft:happy_villager ^2.8665 ^-2.009 ^0.777777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 8 run particle minecraft:happy_villager ^2.681 ^-2.2505 ^0.888888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 9 run particle minecraft:happy_villager ^2.4745 ^-2.478 ^1 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 10 run particle minecraft:happy_villager ^2.247 ^-2.6845 ^1.11111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 11 run particle minecraft:happy_villager ^2.0055 ^-2.87 ^1.22222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 12 run particle minecraft:happy_villager ^1.75 ^-3.0345 ^1.33333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 13 run particle minecraft:happy_villager ^1.477 ^-3.1745 ^1.44444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 14 run particle minecraft:happy_villager ^1.197 ^-3.29 ^1.55555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 15 run particle minecraft:happy_villager ^0.903 ^-3.381 ^1.66666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 16 run particle minecraft:happy_villager ^0.6055 ^-3.4475 ^1.77777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 17 run particle minecraft:happy_villager ^0.3045 ^-3.4895 ^1.88888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 0 run particle minecraft:happy_villager ^0 ^-3.5 ^0 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 1 run particle minecraft:happy_villager ^-0.308 ^-3.4895 ^0.111111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 2 run particle minecraft:happy_villager ^-0.609 ^-3.4475 ^0.222222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 3 run particle minecraft:happy_villager ^-0.9065 ^-3.381 ^0.333333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 4 run particle minecraft:happy_villager ^-1.2005 ^-3.29 ^0.444444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 5 run particle minecraft:happy_villager ^-1.4805 ^-3.1745 ^0.555555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 6 run particle minecraft:happy_villager ^-1.75 ^-3.0345 ^0.666666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 7 run particle minecraft:happy_villager ^-2.009 ^-2.87 ^0.777777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 8 run particle minecraft:happy_villager ^-2.2505 ^-2.6845 ^0.888888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 9 run particle minecraft:happy_villager ^-2.478 ^-2.478 ^1 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 10 run particle minecraft:happy_villager ^-2.6845 ^-2.2505 ^1.11111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 11 run particle minecraft:happy_villager ^-2.87 ^-2.009 ^1.22222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 12 run particle minecraft:happy_villager ^-3.0345 ^-1.75 ^1.33333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 13 run particle minecraft:happy_villager ^-3.1745 ^-1.4805 ^1.44444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 14 run particle minecraft:happy_villager ^-3.29 ^-1.2005 ^1.55555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 15 run particle minecraft:happy_villager ^-3.381 ^-0.9065 ^1.66666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 16 run particle minecraft:happy_villager ^-3.4475 ^-0.609 ^1.77777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 17 run particle minecraft:happy_villager ^-3.4895 ^-0.308 ^1.88888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 0 run particle minecraft:happy_villager ^-3.5 ^-0.0035 ^0 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 1 run particle minecraft:happy_villager ^-3.4895 ^0.3045 ^0.111111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 2 run particle minecraft:happy_villager ^-3.4475 ^0.6055 ^0.222222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 3 run particle minecraft:happy_villager ^-3.381 ^0.903 ^0.333333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 4 run particle minecraft:happy_villager ^-3.29 ^1.197 ^0.444444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 5 run particle minecraft:happy_villager ^-3.1745 ^1.477 ^0.555555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 6 run particle minecraft:happy_villager ^-3.0345 ^1.75 ^0.666666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 7 run particle minecraft:happy_villager ^-2.87 ^2.0055 ^0.777777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 8 run particle minecraft:happy_villager ^-2.6845 ^2.247 ^0.888888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 9 run particle minecraft:happy_villager ^-2.478 ^2.4745 ^1 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 10 run particle minecraft:happy_villager ^-2.2505 ^2.681 ^1.11111111111111 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 11 run particle minecraft:happy_villager ^-2.009 ^2.8665 ^1.22222222222222 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 12 run particle minecraft:happy_villager ^-1.75 ^3.031 ^1.33333333333333 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 13 run particle minecraft:happy_villager ^-1.4805 ^3.171 ^1.44444444444444 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 14 run particle minecraft:happy_villager ^-1.2005 ^3.2865 ^1.55555555555556 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 15 run particle minecraft:happy_villager ^-0.9065 ^3.3775 ^1.66666666666667 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 16 run particle minecraft:happy_villager ^-0.609 ^3.444 ^1.77777777777778 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 17 run particle minecraft:happy_villager ^-0.308 ^3.486 ^1.88888888888889 0 0 0 0 1 force @a[tag=ShowParticles]
execute if score $Timer Global matches 0 run particle minecraft:happy_villager ^-0.0035 ^3.5 ^0 0 0 0 0 1 force @a[tag=ShowParticles]
###---演出---End
