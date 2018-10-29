##############################
### デコイ発動
##############################

###---演出---Start
execute if score @s SupportSkill matches 12041 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~-1 ~ 0.2 1 0.2 0 100 force
execute if score @s SupportSkill matches 12042 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
execute if score @s SupportSkill matches 12043 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] at @s run particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
particle minecraft:witch ~ ~1 ~ 0.2 1 0.2 0 100 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 3 0.5
###---演出---End

execute if score @s SupportSkill matches 12041 as @e[distance=..10] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 12042 as @e[distance=..20] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 12043 as @e[distance=..30] unless entity @s[tag=!Mob,tag=!Animal] run tp @s ~ ~ ~

execute as @e[distance=0] unless entity @s[tag=!Mob,tag=!Animal] run tag @s add DelayedTask
execute as @e[distance=0] unless entity @s[tag=!Mob,tag=!Animal] run tag @s add AvoidFalling
