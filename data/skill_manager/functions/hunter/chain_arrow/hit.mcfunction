##############################
### チェインアローヒット
##############################

scoreboard players operation $Damage Global = @s SkillAttribute

execute if score @s ProjectileSkill matches 31021 as @e[distance=..5,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31022 as @e[distance=..10,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31023 as @e[distance=..20,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
execute if score @s ProjectileSkill matches 31024 as @e[distance=..30,tag=Mob] at @s run function skill_manager:hunter/chain_arrow/apply
