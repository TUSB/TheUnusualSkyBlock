##############################
### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/template/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/template/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/template/other/summon/allocate_id
