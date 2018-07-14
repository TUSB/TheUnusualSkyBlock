##############################
### チェインアローヒット
##############################

scoreboard players operation $Damage Global = @s SkillAttribute

execute if score @s ProjectileSkill matches 31021 as @e[distance=..5,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31022 as @e[distance=..15,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31023 as @e[distance=..25,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31024 as @e[distance=..35,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
