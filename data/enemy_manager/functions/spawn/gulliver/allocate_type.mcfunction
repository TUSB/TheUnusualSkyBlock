##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/gulliver/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/gulliver/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/gulliver/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/gulliver/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/gulliver/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/gulliver/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/gulliver/other/allocate_subtype
