##############################
### 攻撃AI分岐 - Backtheater Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/backtheater/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/backtheater/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/backtheater/water/summon/allocate_id
