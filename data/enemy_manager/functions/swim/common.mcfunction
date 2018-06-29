##############################
### 流体泳補正
##############################

execute if entity @s[tag=InWater] if block ~ ~ ~ minecraft:water run function enemy_manager:swim/swim
execute if entity @s[tag=InLava] if block ~ ~ ~ minecraft:lava run function enemy_manager:swim/swim
execute if entity @s[tag=InAir] if block ~ ~ ~ minecraft:air run function enemy_manager:swim/swim
