##############################
### クリスタルLight攻撃
##############################

###---演出---Start
particle minecraft:dust 1 1 1 3 ~ ~4 ~ 0.2 2 0.2 0 100 force
particle minecraft:dust 1 1 1 3 ~ ~ ~ 1 0 1 0 100 force
particle minecraft:dust 1 1 1 3 ~ ~-0.5 ~ 2 0 2 0 100 force
particle minecraft:dust 1 1 1 3 ~ ~-1 ~ 4 0 4 0 100 force
###---演出---End

function skill_manager:summoner/call_crystal/attack/common

scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToLight,tag=!Undead] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToLight,tag=Undead] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $3 Const
scoreboard players operation $BaseDamage Global /= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToLight,tag=!Undead] Damage += $BaseDamage Global
scoreboard players operation $BaseDamage Global *= $2 Const
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToLight,tag=Undead] Damage += $BaseDamage Global

execute as @e[distance=..10,tag=Mob] at @s run function skill_manager:summoner/call_crystal/attack/erase_weekness
tag @e[distance=..10,tag=Mob] add WeakToDark
