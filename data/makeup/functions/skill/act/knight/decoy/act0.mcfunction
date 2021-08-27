##############################
### デコイ発動
##############################

###---演出---Start
execute if score _ Level matches 1 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~-1 ~ 0.2 1 0.2 0 100 force @a[tag=ShowParticles]
execute if score _ Level matches 2 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force @a[tag=ShowParticles]
execute if score _ Level matches 3 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force @a[tag=ShowParticles]
particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force @a[tag=ShowParticles]
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 0.5
###---演出---End