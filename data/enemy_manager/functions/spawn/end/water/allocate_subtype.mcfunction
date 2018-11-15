##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/end/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/end/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/end/water/summon/allocate_id
