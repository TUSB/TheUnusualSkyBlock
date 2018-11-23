##############################
### 攻撃AI分岐 - End Other
##############################

execute if entity @s[tag=Blow] run function enemy_manager:spawn/end/other/blow/allocate_id
execute if entity @s[tag=Shoot] run function enemy_manager:spawn/end/other/shoot/allocate_id
execute if entity @s[tag=Summon] run function enemy_manager:spawn/end/other/summon/allocate_id
