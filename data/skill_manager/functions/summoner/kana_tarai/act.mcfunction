##############################
### 金タライ発動
##############################

execute as @e[distance=..15,tag=Mob] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:falling_block ~ ~2 ~ {BlockState:{Name:"minecraft:light_weighted_pressure_plate"},Time:540,Tags:[NeverRemain,KanaTarai,TickingTask,Initializing]}
execute if score @s ModeSkill matches 61021 run scoreboard players set $Damage Global 8500
execute if score @s ModeSkill matches 61022 run scoreboard players set $Damage Global 50000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing] SkillAttribute = $Damage Global
tag @e[tag=Initializing] remove Initializing

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a[distance=..32] ~ ~ ~ 1 2
playsound minecraft:item.trident.throw master @a[distance=..32] ~ ~ ~ 1 1
execute as @e[distance=..15,tag=Mob] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:entity_effect ~ ~2 ~ 0.5 0.5 0.5 1 15 force
execute as @e[distance=..15,tag=Mob] at @s anchored eyes positioned ^ ^ ^ run particle minecraft:cloud ~ ~2 ~ 0.5 0.5 0.5 0.1 5 force
###---演出---End
