##############################
### グループ分岐 - Questworld
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/questworld/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/questworld/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/questworld/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/questworld/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/questworld/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/questworld/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/questworld/water/allocate_ai
