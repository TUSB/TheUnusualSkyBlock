##############################
### 攻撃AI分岐 - Clouder Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/clouder/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/clouder/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/clouder/other/summon/allocate_id
