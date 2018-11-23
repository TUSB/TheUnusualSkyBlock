##############################
### 攻撃AI分岐 - Gulliver Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/gulliver/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/gulliver/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/gulliver/sky/summon/allocate_id
