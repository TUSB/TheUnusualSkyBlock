##############################
### 攻撃AI分岐 - Global Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/global/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/global/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/global/water/summon/allocate_id
