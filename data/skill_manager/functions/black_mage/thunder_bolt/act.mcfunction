##############################
### サンダーボルト発動
##############################

execute if score @s ModeSkill matches 51031 as @e[distance=2..13,tag=Mob] positioned ~-4 ~2 ~-4 if entity @s[dx=7,dy=10,dz=7] at @s run scoreboard players add @s Damage 1000
execute if score @s ModeSkill matches 51032 as @e[distance=2..13,tag=Mob] positioned ~-4 ~2 ~-4 if entity @s[dx=7,dy=10,dz=7] at @s run scoreboard players add @s Damage 2000
execute if score @s ModeSkill matches 51033 as @e[distance=2..13,tag=Mob] positioned ~-4 ~2 ~-4 if entity @s[dx=7,dy=10,dz=7] at @s run scoreboard players add @s Damage 3500
execute if score @s ModeSkill matches 51034 as @e[distance=2..13,tag=Mob] positioned ~-4 ~2 ~-4 if entity @s[dx=7,dy=10,dz=7] at @s run scoreboard players add @s Damage 5500

###---演出---Start
execute as @e[distance=2..13,tag=Mob] positioned ~-4 ~2 ~-4 if entity @s[dx=7,dy=10,dz=7] at @s run particle minecraft:dust 1 1 0 1 ~ ~10 ~ 0 5 0 0 100
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..16] ~ ~ ~ 2 2
###---演出---End
