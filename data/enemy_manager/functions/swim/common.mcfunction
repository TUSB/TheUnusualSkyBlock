##############################
### 流体泳補正
##############################

execute if entity @s[tag=InWater] if block ~ ~0.7 ~ minecraft:water run function enemy_manager:swim/swim
execute if entity @s[tag=InLava] if block ~ ~0.7 ~ minecraft:lava run function enemy_manager:swim/swim
execute if entity @s[tag=InAir] unless block ~ ~0.7 ~ minecraft:water unless block ~ ~0.7 ~ minecraft:lava run function enemy_manager:swim/swim

execute store result score $Y Global run data get entity @s Pos[1] 1000
execute unless score $Y Global matches 0..256000 run function enemy_manager:swim/swim
