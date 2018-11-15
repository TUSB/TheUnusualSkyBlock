##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/nether/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/nether/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/nether/water/summon/allocate_id
