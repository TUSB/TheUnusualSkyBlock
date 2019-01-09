##############################
### 弱点 分岐
##############################

execute if entity @s[tag=WeakToWater] if block ~ ~ ~ minecraft:water run function entity_manager:weak_point/weak_to_water
execute if entity @s[tag=WeakToFire,nbt=!{Fire:-1s}] run function entity_manager:weak_point/weak_to_fire
