##############################
### 飛翔物ヒット前フラグ付与
##############################

execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=!Rapid] positioned ~-3 ~-3 ~-3 run scoreboard players operation @e[dx=6,dy=6,dz=6,tag=Mob] ProjectileSkillA = @s ProjectileSkillA
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] ProjectileSkill = @s ProjectileSkill
execute if entity @s[tag=Rapid] positioned ~-10 ~-10 ~-10 run scoreboard players operation @e[dx=20,dy=20,dz=20,tag=Mob] ProjectileSkillA = @s ProjectileSkillA

execute if score @s ProjectileSkill matches 99995 run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 1 force
execute if score @s ProjectileSkill matches 99995 run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 5 0.5
