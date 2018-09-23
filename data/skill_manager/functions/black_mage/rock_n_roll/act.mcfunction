##############################
### ロックンロール発動
##############################

summon minecraft:armor_stand ~ ~0.9 ~ {Marker:false,Invisible:false,Invulnerable:true,NoGravity:true,Tags:[RockNRoll,Initializing],ArmorItems:[{},{},{},{id:"minecraft:granite",Count:1b}]}
execute as @e[tag=Initializing,limit=1] at @s run function calc_manager:set/random_pose_head
execute if score @s ModeSkill matches 51041 run scoreboard players set $Damage Global 5000
execute if score @s ModeSkill matches 51042 run scoreboard players set $Damage Global 15000
execute if score @s ModeSkill matches 51043 run scoreboard players set $Damage Global 45000
execute if score @s ModeSkill matches 51044 run scoreboard players set $Damage Global 135000
function calc_manager:apply_damage_modifier
scoreboard players operation @e[tag=Initalizing,limit=1] SkillAttribute = $Damage Global

scoreboard players operation $ID Global = @s ID
execute as @e[tag=RockNRoll] if score @s ID = $ID Global facing ^ ^ ^ run function skill_manager:black_mage/rock_n_roll/calc
execute facing entity @e[tag=Initializing,limit=1] feet rotated ~180 0 positioned ^ ^ ^-5 run tp @e[tag=Initializing,limit=1] ~ ~ ~ ~1 ~
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID

tag @e[tag=Initializing,limit=1] remove Initializing
 
###---演出---Start
# playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..16] ~ ~ ~ 1 2
# playsound minecraft:item.trident.thunder master @a[distance=..16] ~ ~ ~ 0.6 2
# particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.6 30 force
# particle minecraft:totem_of_undying ~ ~4 ~ 0 0 0 0.4 30 force
# execute rotated ~ 0 positioned ^-0.3 ^1.2 ^0.3 run particle minecraft:dust 0.8 0 1 0.6 ~ ~ ~ 0.15 0.4 0.15 0 50 force
###---演出---End
