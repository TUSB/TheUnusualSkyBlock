##############################
### タイプ割り当て
##############################

execute if entity @s[tag=Boss] run function enemy_manager:spawn/tablemountain/boss/allocate_id
execute if entity @s[tag=Friendly] run function enemy_manager:spawn/tablemountain/friendly/allocate_id
execute if entity @s[tag=Neutrality] run function enemy_manager:spawn/tablemountain/neutrality/allocate_id
execute if entity @s[tag=Ground] run function enemy_manager:spawn/tablemountain/ground/allocate_subtype
execute if entity @s[tag=Sky] run function enemy_manager:spawn/tablemountain/sky/allocate_subtype
execute if entity @s[tag=Water] run function enemy_manager:spawn/tablemountain/water/allocate_subtype
execute if entity @s[tag=Other] run function enemy_manager:spawn/tablemountain/other/allocate_subtype
