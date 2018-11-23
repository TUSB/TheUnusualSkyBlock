##############################
### モブID分岐 - Global Other Blow
##############################

execute if entity @s[tag=Colony] run function enemy_manager:spawn/global/other/blow/colony/allocate_subfolder
execute if entity @s[tag=Riderrelative] run function enemy_manager:spawn/global/other/blow/riderrelative/allocate_subfolder
execute if entity @s[tag=Sat] run function enemy_manager:summon/global/other/blow/sat_40
