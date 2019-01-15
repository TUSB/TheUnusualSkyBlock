##############################
### モブID分岐 - Global Ground Summon
##############################

execute if entity @s[tag=Trap] run function enemy_manager:spawn/global/ground/summon/trap/allocate_subfolder
execute if entity @s[tag=MonsterEgg] run function enemy_manager:summon/global/ground/summon/monster_egg_18
