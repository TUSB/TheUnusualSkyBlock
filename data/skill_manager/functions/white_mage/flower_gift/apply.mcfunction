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
particle minecraft:item minecraft:rose_bush ~ ~1.5 ~ 0.8 0.8 0.8 0.08 100 force
playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..48] ~ ~ ~ 1 1
playsound minecraft:entity.zombie_villager.cure master @a[distance=..48] ~ ~ ~ 1 2
###---演出---End
