##############################
### 攻撃AI分岐 - Questworld Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/questworld/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/questworld/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/questworld/ground/summon/allocate_id
