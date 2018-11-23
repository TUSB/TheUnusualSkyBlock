##############################
### 攻撃AI分岐 - End Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/end/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/end/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/end/sky/summon/allocate_id
