##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/nether/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/nether/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/nether/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/nether/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/nether/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/nether/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/nether/other/allocate_subtype
