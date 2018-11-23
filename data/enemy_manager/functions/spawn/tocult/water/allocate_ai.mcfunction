##############################
### 攻撃AI分岐 - Tocult Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/tocult/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/tocult/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/tocult/water/summon/allocate_id
