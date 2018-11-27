##############################
### クリスタルDark攻撃
##############################

###---演出---Start
particle minecraft:dust 0 0 0 3 ~ ~4 ~ 0.2 2 0.2 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 0 3 ~ ~ ~ 1 0 1 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 0 3 ~ ~-0.5 ~ 2 0 2 0 100 force @a[tag=ShowParticles]
particle minecraft:dust 0 0 0 3 ~ ~-1 ~ 5 0 5 0 100 force @a[tag=ShowParticles]
###---演出---End

function skill_manager:summoner/call_crystal/attack/common

scoreboard players operation $Damage Global = $BaseDamage Global
scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToDark,tag=Undead] Damage > $Damage Global
scoreboard players operation $Damage Global += $BaseDamage Global
scoreboard players operation @e[distance=..10,tag=Mob,tag=!WeakToDark,tag=Living] Damage > $Damage Global
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToDark,tag=Undead] Damage > $Damage Global
scoreboard players operation $Damage Global += $BaseDamage Global
scoreboard players operation @e[distance=..10,tag=Mob,tag=WeakToDark,tag=Living] Damage > $Damage Global

execute as @e[distance=..10,tag=Mob] at @s run function skill_manager:summoner/call_crystal/attack/erase_weekness
tag @e[distance=..10,tag=Mob] add WeakToLight
