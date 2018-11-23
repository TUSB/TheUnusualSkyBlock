##############################
### 攻撃AI分岐 - Backtheater Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/backtheater/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/backtheater/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/backtheater/sky/summon/allocate_id
