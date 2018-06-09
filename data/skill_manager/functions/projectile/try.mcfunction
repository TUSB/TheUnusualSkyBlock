##############################
### 飛翔物ヒット前フラグ付与
##############################

execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkillA = @s ProjectileSkillA
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] ProjectileSkillA = @s ProjectileSkillA

execute if score @s ProjectileSkill matches 99995 run function skill_manager:knight/aerial_slash/fly
