##############################
### 攻撃AI分岐 - Clouder Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/clouder/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/clouder/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/clouder/sky/summon/allocate_id
