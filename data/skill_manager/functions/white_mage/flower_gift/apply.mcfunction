##############################
### フラワーギフト適用
##############################

execute store result score $Range Global run data get entity @s Attributes[5].Base 100
scoreboard players operation $Range Global *= $Modifier Global
execute store result entity @s Attributes[5].Base double 0.0001 run scoreboard players get $Range Global

execute store result score $Range Global run data get entity @s RequiredPlayerRange 100
scoreboard players operation $Range Global *= $Modifier Global
execute store result entity @s RequiredPlayerRange short 0.0001 run scoreboard players get $Range Global

tag @s add Gifted

###---演出---Start
###---演出---End
