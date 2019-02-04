##############################
### モブID分岐 - Underworld Ground Shoot
##############################

execute if entity @s[tag=Titeizin] run function enemy_manager:spawn/underworld/ground/shoot/titeizin/allocate_subfolder
execute if entity @s[tag=OldGurdian] run function enemy_manager:summon/underworld/ground/shoot/old_gurdian_30
execute if entity @s[tag=UndergraundDrowned] run function enemy_manager:summon/underworld/ground/shoot/undergraund_drowned_30
execute if entity @s[tag=UndergraundGurdian] run function enemy_manager:summon/underworld/ground/shoot/undergraund_gurdian_30
execute if entity @s[tag=Undyne] run function enemy_manager:summon/underworld/ground/shoot/undyne_30
