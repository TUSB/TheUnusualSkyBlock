##############################
### 攻撃AI分岐 - Global Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/global/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/global/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/global/other/summon/allocate_id
