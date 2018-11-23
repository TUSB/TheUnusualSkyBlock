##############################
### 攻撃AI分岐 - Nether Ground
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/nether/ground/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/nether/ground/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/nether/ground/summon/allocate_id
