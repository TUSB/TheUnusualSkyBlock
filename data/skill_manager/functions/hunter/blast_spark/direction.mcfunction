##############################
### ブラストスパーク軌跡
##############################

particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2 force
particle minecraft:dust 255 255 255 0.5 ~ ~ ~ 0.2 0.2 0.2 0 6 force
playsound minecraft:item.trident.return master @a ~ ~ ~ 3 2
scoreboard players operation @e[distance=..3.5,tag=Mob] Damage > @s SkillAttribute
execute as @e[distance=..3.5,tag=Mob] at @p[scores={Age=1..}] positioned ~ ~1.52 ~ positioned ~ ~-10 ~ run function enemy_manager:knockback
