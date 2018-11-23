##############################
### グループ分岐 - End
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/end/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/end/friendly/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/end/ground/allocate_ai
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/end/neutrality/allocate_id
execute if entity @s[tag=Other] run function enemy_manager:spawn/end/other/allocate_ai
execute if entity @s[tag=Sky] run function enemy_manager:spawn/end/sky/allocate_ai
execute if entity @s[tag=Water] run function enemy_manager:spawn/end/water/allocate_ai
