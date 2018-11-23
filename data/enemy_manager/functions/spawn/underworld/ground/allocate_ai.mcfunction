##############################
### 攻撃AI分岐 - Underworld Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/underworld/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/underworld/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/underworld/ground/summon/allocate_id
