##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/desert/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/desert/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/desert/ground/summon/allocate_id
