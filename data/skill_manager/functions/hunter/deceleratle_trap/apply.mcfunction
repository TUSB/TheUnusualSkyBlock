##############################
### ボミオストラップ減速適用
##############################

execute store result score $Speed Global run data get entity @s Motion[0] 1000
scoreboard players operation $Speed Global *= $Modifier Global
execute store result entity @s Motion[0] double 0.00001 run scoreboard players get $Speed Global

execute store result score $Speed Global run data get entity @s Motion[1] 1000
scoreboard players operation $Speed Global *= $Modifier Global
execute store result entity @s Motion[1] double 0.00001 run scoreboard players get $Speed Global

execute store result score $Speed Global run data get entity @s Motion[2] 1000
scoreboard players operation $Speed Global *= $Modifier Global
execute store result entity @s Motion[2] double 0.00001 run scoreboard players get $Speed Global
