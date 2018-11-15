##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/desert/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/desert/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/desert/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/desert/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/desert/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/desert/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/desert/other/allocate_subtype
