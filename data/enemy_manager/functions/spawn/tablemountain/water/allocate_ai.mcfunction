##############################
### 攻撃AI分岐 - Tablemountain Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tablemountain/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tablemountain/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tablemountain/water/summon/allocate_id
