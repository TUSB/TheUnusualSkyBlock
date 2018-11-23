##############################
### 攻撃AI分岐 - Nether Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/nether/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/nether/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/nether/sky/summon/allocate_id
