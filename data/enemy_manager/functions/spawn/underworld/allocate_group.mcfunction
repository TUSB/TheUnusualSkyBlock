##############################
### グループ分岐 - Underworld
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/underworld/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/underworld/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/underworld/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/underworld/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/underworld/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/underworld/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/underworld/water/allocate_ai
