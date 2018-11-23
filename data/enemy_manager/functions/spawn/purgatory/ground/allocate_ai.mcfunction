##############################
### 攻撃AI分岐 - Purgatory Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/purgatory/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/purgatory/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/purgatory/ground/summon/allocate_id
