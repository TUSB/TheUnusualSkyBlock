##############################
### モブID分岐 - Underworld Ground Summon
##############################

execute if entity @s[tag=Ghoul] run function enemy_manager:spawn/underworld/ground/summon/ghoul/allocate_subfolder
execute if entity @s[tag=Titeizin] run function enemy_manager:spawn/underworld/ground/summon/titeizin/allocate_subfolder
execute if entity @s[tag=Tutigumo] run function enemy_manager:summon/underworld/ground/summon/tutigumo_30
