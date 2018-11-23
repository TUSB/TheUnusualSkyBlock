##############################
### 攻撃AI分岐 - Purgatory Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/purgatory/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/purgatory/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/purgatory/sky/summon/allocate_id
