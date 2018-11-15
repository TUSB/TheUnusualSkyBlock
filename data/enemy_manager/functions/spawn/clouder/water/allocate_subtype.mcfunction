##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/clouder/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/clouder/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/clouder/water/summon/allocate_id
