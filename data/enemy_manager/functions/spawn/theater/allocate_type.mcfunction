##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/theater/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/theater/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/theater/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/theater/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/theater/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/theater/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/theater/other/allocate_subtype
