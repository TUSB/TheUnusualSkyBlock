##############################
### ディメンション分岐
##############################

execute if entity @s[tag=Backtheater] run function enemy_manager:spawn/backtheater/allocate_group
execute if entity @s[tag=Clouder] run function enemy_manager:spawn/clouder/allocate_group
execute if entity @s[tag=Desert] run function enemy_manager:spawn/desert/allocate_group
execute if entity @s[tag=End] run function enemy_manager:spawn/end/allocate_group
execute if entity @s[tag=Global] run function enemy_manager:spawn/global/allocate_group
execute if entity @s[tag=Gulliver] run function enemy_manager:spawn/gulliver/allocate_group
execute if entity @s[tag=Nether] run function enemy_manager:spawn/nether/allocate_group
execute if entity @s[tag=Purgatory] run function enemy_manager:spawn/purgatory/allocate_group
execute if entity @s[tag=Questworld] run function enemy_manager:spawn/questworld/allocate_group
execute if entity @s[tag=Tablemountain] run function enemy_manager:spawn/tablemountain/allocate_group
execute if entity @s[tag=Theater] run function enemy_manager:spawn/theater/allocate_group
execute if entity @s[tag=Tocult] run function enemy_manager:spawn/tocult/allocate_group
execute if entity @s[tag=Underworld] run function enemy_manager:spawn/underworld/allocate_group
execute if entity @s[tag=Tool] run function enemy_manager:spawn/tool/allocate_id
execute if entity @s[tag=Event] run function enemy_manager:spawn/event/allocate_id

kill @s[tag=!Call]
