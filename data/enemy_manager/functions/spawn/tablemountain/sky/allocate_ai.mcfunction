##############################
### 攻撃AI分岐 - Tablemountain Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tablemountain/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tablemountain/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tablemountain/sky/summon/allocate_id
