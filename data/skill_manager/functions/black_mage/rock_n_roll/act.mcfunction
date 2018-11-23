##############################
### ロックンロール発動
##############################

execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute rotated ~120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute rotated ~-120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}],Fire:2000s}
execute as @e[tag=Initializing] at @s run function calc_manager:set/random_pose_head
execute if score @s ModeSkill matches 51041 run scoreboard players set $Damage Global 8500
execute if score @s ModeSkill matches 51042 run scoreboard players set $Damage Global 19000
execute if score @s ModeSkill matches 51043 run scoreboard players set $Damage Global 73000
execute if score @s ModeSkill matches 51044 run scoreboard players set $Damage Global 105000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing] SkillAttribute = $Damage Global
scoreboard players operation @e[tag=Initializing] ID = @s ID

###---演出---Start
execute as @e[tag=Initializing] positioned as @s run particle minecraft:block minecraft:granite ~ ~1.2 ~ 0.8 0.8 0.8 1 50 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:explosion ~ ~ ~ 0.1 0.1 0.1 1 2 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:angry_villager ~ ~ ~ 0.6 0.6 0.6 1 5 force
execute as @e[tag=Initializing] positioned as @s run particle minecraft:dragon_breath ~ ~0.1 ~ 0 0 0 0.08 15 force
playsound minecraft:entity.wither.break_block master @a[distance=..16] ~ ~ ~ 1 1.4
playsound minecraft:entity.generic.explode master @a[distance=..16] ~ ~ ~ 1 1
###---演出---End

tag @e[tag=Initializing] remove Initializing
