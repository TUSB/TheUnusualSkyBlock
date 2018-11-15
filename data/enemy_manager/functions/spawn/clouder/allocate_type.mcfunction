##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/clouder/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/clouder/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/clouder/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/clouder/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/clouder/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/clouder/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/clouder/other/allocate_subtype
