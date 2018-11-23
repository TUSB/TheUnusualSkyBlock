##############################
### グループ分岐 - Desert
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/desert/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/desert/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/desert/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/desert/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/desert/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/desert/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/desert/water/allocate_ai
