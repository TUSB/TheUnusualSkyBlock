##############################
### 攻撃AI分岐 - Tablemountain Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tablemountain/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tablemountain/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tablemountain/ground/summon/allocate_id
