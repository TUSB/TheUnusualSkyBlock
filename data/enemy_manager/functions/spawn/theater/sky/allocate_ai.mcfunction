##############################
### 攻撃AI分岐 - Theater Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/theater/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/theater/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/theater/sky/summon/allocate_id
