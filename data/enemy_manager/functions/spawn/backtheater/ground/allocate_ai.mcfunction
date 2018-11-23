##############################
### 攻撃AI分岐 - Backtheater Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/backtheater/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/backtheater/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/backtheater/ground/summon/allocate_id
