##############################
### 攻撃AI分岐 - Gulliver Water
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/gulliver/water/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/gulliver/water/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/gulliver/water/summon/allocate_id
