
execute if score _ Level matches 1 as @e[distance=..10] unless entity @s[tag=!Enemy,tag=!Animal] at @s run particle minecraft:witch ~ ~-1 ~ 0.2 1 0.2 0 100 force
execute if score _ Level matches 2 as @e[distance=..20] unless entity @s[tag=!Enemy,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
execute if score _ Level matches 3 as @e[distance=..30] unless entity @s[tag=!Enemy,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 0.5
