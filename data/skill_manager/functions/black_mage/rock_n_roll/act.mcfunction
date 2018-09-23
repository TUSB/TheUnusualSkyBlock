##############################
### ロックンロール発動
##############################

execute rotated ~ 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}]}
execute rotated ~120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}]}
execute rotated ~-120 0 positioned ^ ^ ^5 run summon minecraft:armor_stand ~ ~ ~ {Marker:true,Invisible:true,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing,CooldownRequired],PortalCooldown:600,ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}]}
execute as @e[tag=Initializing] at @s run function calc_manager:set/random_pose_head
execute if score @s ModeSkill matches 51041 run scoreboard players set $Damage Global 5000
execute if score @s ModeSkill matches 51042 run scoreboard players set $Damage Global 15000
execute if score @s ModeSkill matches 51043 run scoreboard players set $Damage Global 45000
execute if score @s ModeSkill matches 51044 run scoreboard players set $Damage Global 100000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initializing] SkillAttribute = $Damage Global
scoreboard players operation @e[tag=Initializing] ID = @s ID

tag @e[tag=Initializing] remove Initializing

###---演出---Start
###---演出---End
