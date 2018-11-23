##############################
### 攻撃AI分岐 - Tocult Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tocult/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tocult/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tocult/sky/summon/allocate_id
