##############################
### モブID分岐 - Tocult Ground Shoot
##############################

execute if entity @s[tag=Undeatharmy] run function enemy_manager:spawn/tocult/ground/shoot/undeatharmy/allocate_subfolder
execute if entity @s[tag=Frozen] run function enemy_manager:summon/tocult/ground/shoot/frozen_40
execute if entity @s[tag=FrozenGun] run function enemy_manager:summon/tocult/ground/shoot/frozen_gun_30
