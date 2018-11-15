##############################
### MOB割り当て
##############################

execute if entity @s[tag=Colony] run function enemy_manager:spawn/global/other/blow/colony/allocate_colony
execute if entity @s[tag=SAT] run function enemy_manager:summon/global/other/blow/sat_40
