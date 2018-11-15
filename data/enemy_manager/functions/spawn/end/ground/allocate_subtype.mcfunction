##############################

### サブタイプ割り当て
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/end/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/end/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/end/ground/summon/allocate_id
