##############################
### グループ分岐 - Backtheater
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/backtheater/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/backtheater/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/backtheater/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/backtheater/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/backtheater/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/backtheater/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/backtheater/water/allocate_ai
