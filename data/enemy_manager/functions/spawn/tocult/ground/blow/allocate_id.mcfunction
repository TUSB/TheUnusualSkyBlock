##############################
### モブID分岐 - Tocult Ground Blow
##############################

execute if entity @s[tag=Ant] run function enemy_manager:spawn/tocult/ground/blow/ant/allocate_subfolder
execute if entity @s[tag=Circuit] run function enemy_manager:spawn/tocult/ground/blow/circuit/allocate_subfolder
execute if entity @s[tag=Pirate] run function enemy_manager:spawn/tocult/ground/blow/pirate/allocate_subfolder
execute if entity @s[tag=Undeatharmy] run function enemy_manager:spawn/tocult/ground/blow/undeatharmy/allocate_subfolder
execute if entity @s[tag=BurningJealousy] run function enemy_manager:summon/tocult/ground/blow/burning_jealousy_30
execute if entity @s[tag=FrostBear] run function enemy_manager:summon/tocult/ground/blow/frost_bear_61
