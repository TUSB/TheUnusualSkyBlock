##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/tocult/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/tocult/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/tocult/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/tocult/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/tocult/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/tocult/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/tocult/other/allocate_subtype
