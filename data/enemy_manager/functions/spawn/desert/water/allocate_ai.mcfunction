##############################
### 攻撃AI分岐 - Desert Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/desert/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/desert/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/desert/water/summon/allocate_id
