##############################
### 攻撃AI分岐 - Nether Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/nether/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/nether/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/nether/other/summon/allocate_id
