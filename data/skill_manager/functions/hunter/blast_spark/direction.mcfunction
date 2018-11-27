##############################
### ブラストスパーク軌跡
##############################

###---演出---Start
particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force @a[tag=ShowParticles]
particle minecraft:dust 255 255 255 0.5 ~ ~ ~ 0.2 0.2 0.2 0 6 force @a[tag=ShowParticles]
execute as @a[distance=..16] run playsound minecraft:item.trident.return master @s ~ ~64 ~ 8 2
###---演出---End

scoreboard players operation @e[distance=..3.5,tag=Mob] Damage > @s SkillAttribute
execute as @e[distance=..3.5,tag=Mob] at @p[scores={Age=1..}] positioned ~ ~1.52 ~ positioned ~ ~-10 ~ run function enemy_manager:knockback
