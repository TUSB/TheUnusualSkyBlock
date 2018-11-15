##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/global/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/global/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/global/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/global/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/global/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/global/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/global/other/allocate_subtype
