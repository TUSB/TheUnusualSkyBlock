##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/global/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/global/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/global/ground/summon/allocate_id
