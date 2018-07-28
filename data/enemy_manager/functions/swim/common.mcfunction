##############################
### 流体泳補正
##############################

execute if entity @s[tag=InWater] if block ~ ~0.7 ~ minecraft:water run function enemy_manager:swim/swim
execute if entity @s[tag=InLava] if block ~ ~0.7 ~ minecraft:lava run function enemy_manager:swim/swim
execute if entity @s[tag=InAir] unless block ~ ~0.7 ~ minecraft:water unless block ~ ~0.7 ~ minecraft:lava run function enemy_manager:swim/swim
