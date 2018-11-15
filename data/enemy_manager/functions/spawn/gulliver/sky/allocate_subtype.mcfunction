##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/gulliver/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/gulliver/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/gulliver/other/summon/allocate_id
