##############################
### モブID分岐 - Global Sky Blow
##############################

execute if entity @s[tag=Eye] run function enemy_manager:spawn/global/sky/blow/eye/allocate_subfolder
execute if entity @s[tag=Eyes] run function enemy_manager:spawn/global/sky/blow/eyes/allocate_subfolder
execute if entity @s[tag=FlagBullet] run function enemy_manager:spawn/global/sky/blow/flag_bullet/allocate_subfolder
