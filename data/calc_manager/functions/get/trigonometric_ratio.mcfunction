##############################
### 三角比を求める
##############################

scoreboard players operation $RX1 Global = $Theta Global
scoreboard players set $RY1 Global 0

execute as @e[x=0,y=0,z=0,distance=..1.01,tag=TrigonometricCore,limit=1] at @s run function calc_manager:set/rotation1
execute as @e[x=0,y=0,z=0,distance=..1.01,tag=TrigonometricCore,limit=1] at @s positioned ^ ^ ^1 run tp @s ~ ~ ~

execute store result score $Sin Global run data get entity @e[x=0,y=0,z=0,distance=..1.01,tag=TrigonometricCore,limit=1] Pos[1] 1000
execute store result score $Cos Global run data get entity @e[x=0,y=0,z=0,distance=..1.01,tag=TrigonometricCore,limit=1] Pos[2] 1000

execute as @e[x=0,y=0,z=0,distance=..1.01,tag=TrigonometricCore,limit=1] at @s run tp 0.0 0.0 0.0

scoreboard players operation $Tan Global = $Sin Global
scoreboard players operation $Tan Global *= $1000 Const
scoreboard players operation $Tan Global /= $Cos Global
