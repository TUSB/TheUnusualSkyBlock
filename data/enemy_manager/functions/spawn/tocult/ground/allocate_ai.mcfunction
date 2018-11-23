##############################
### 攻撃AI分岐 - Tocult Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tocult/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tocult/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tocult/ground/summon/allocate_id
