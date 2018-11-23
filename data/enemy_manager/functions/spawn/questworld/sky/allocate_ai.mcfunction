##############################
### 攻撃AI分岐 - Questworld Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/questworld/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/questworld/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/questworld/sky/summon/allocate_id
