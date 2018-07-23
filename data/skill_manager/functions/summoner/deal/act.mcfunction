##############################
### ディール発動
##############################

execute if score @s ModeSkill matches 61031 run scoreboard players set $Damage Global 70000
execute if score @s ModeSkill matches 61032 run scoreboard players set $Damage Global 185000
execute if score @s ModeSkill matches 61033 run scoreboard players set $Damage Global 1000000
function calc_manager:apply_damage_modifier

execute as @e[distance=..45,tag=Mob] at @s if block ~ ~-1 ~ minecraft:white_wool run scoreboard players operation @s Damage += $Damage Global

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
execute as @e[distance=..45,tag=Mob] at @s if block ~ ~-1 ~ minecraft:white_wool run particle minecraft:block minecraft:white_wool ~ ~0.5 ~ 0 0 0 0 100 force
###---演出---End
