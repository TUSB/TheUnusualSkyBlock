##############################
### グループ分岐 - Purgatory
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/purgatory/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/purgatory/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/purgatory/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/purgatory/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/purgatory/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/purgatory/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/purgatory/water/allocate_ai
