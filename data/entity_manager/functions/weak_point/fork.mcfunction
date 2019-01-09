##############################
### 弱点 分岐
##############################

execute if entity @s[tag=WeakToWater] if block ~ ~ ~ minecraft:water run function entity_manager:weak_point/weak_to_water
execute if entity @s[tag=WeakToAir] if block ~ ~ ~ minecraft:air run function entity_manager:weak_point/weak_to_air
execute if entity @s[tag=WeakToFire,nbt=!{Fire:-1s}] run function entity_manager:weak_point/weak_to_fire
execute if entity @s[tag=WeakToPoison,nbt={ActiveEffects:[{Id:19b}]}] run function entity_manager:weak_point/weak_to_poison
execute if entity @s[tag=WeakToWither,nbt={ActiveEffects:[{Id:20b}]}] run function entity_manager:weak_point/weak_to_wither
