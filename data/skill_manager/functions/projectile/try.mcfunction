##############################
### 飛翔物ヒット前フラグ付与
##############################

execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] SkillAttribute = @s SkillAttribute
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] SkillAttribute = @s SkillAttribute

execute if score @s ProjectileSkill matches 11041..11049 run function skill_manager:knight/aerial_slash/fly
