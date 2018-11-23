##############################
### 攻撃AI分岐 - Theater Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/theater/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/theater/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/theater/other/summon/allocate_id
