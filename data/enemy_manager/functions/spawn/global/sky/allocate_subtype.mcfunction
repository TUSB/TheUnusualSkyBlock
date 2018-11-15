##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/global/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/global/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/global/sky/summon/allocate_id
