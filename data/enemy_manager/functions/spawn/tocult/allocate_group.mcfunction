##############################
### グループ分岐 - Tocult
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/tocult/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/tocult/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/tocult/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/tocult/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/tocult/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/tocult/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/tocult/water/allocate_ai
