##############################
### ディール発動
##############################

execute if score @s ModeSkill matches 61031 run scoreboard players set $Damage Global 70000
execute if score @s ModeSkill matches 61032 run scoreboard players set $Damage Global 185000
execute if score @s ModeSkill matches 61033 run scoreboard players set $Damage Global 1000000
function calc_manager:apply_damage_modifier

execute as @e[distance=..45,tag=Mob] at @s if block ~ ~-1 ~ minecraft:white_wool run scoreboard players operation @s Damage += $Damage Global

###---演出---Start
playsound minecraft:entity.wither.shoot master @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:entity.shulker_bullet.hit master @a[distance=..32] ~ ~ ~ 1 1
playsound minecraft:entity.sheep.ambient master @a[distance=..32] ~ ~ ~ 1 0.6
playsound minecraft:entity.sheep.ambient master @a[distance=..32] ~ ~ ~ 1 1
execute as @e[distance=..45,tag=Mob] at @s if block ~ ~-1 ~ minecraft:white_wool run particle minecraft:item minecraft:white_wool ~ ~0.5 ~ 0 0.5 0 0.2 100 force
execute as @e[distance=..45,tag=Mob] at @s if block ~ ~-1 ~ minecraft:white_wool run particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.2 15 force
###---演出---End
