##############################
### 攻撃AI分岐 - Tablemountain Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tablemountain/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tablemountain/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tablemountain/other/summon/allocate_id
