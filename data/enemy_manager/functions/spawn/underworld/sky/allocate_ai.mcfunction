##############################
### 攻撃AI分岐 - Underworld Sky
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/underworld/sky/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/underworld/sky/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/underworld/sky/summon/allocate_id
