##############################
### ディメンション割り当て
##############################

execute if entity @s[tag=BackTheater] run function enemy_manager:spawn/backtheater/allocate_type
execute if entity @s[tag=Clouder] run function enemy_manager:spawn/clouder/allocate_type
execute if entity @s[tag=Desert] run function enemy_manager:spawn/desert/allocate_type
execute if entity @s[tag=End] run function enemy_manager:spawn/end/allocate_type
execute if entity @s[tag=Global] run function enemy_manager:spawn/global/allocate_type
execute if entity @s[tag=Gulliver] run function enemy_manager:spawn/gulliver/allocate_type
execute if entity @s[tag=Nether] run function enemy_manager:spawn/nether/allocate_type
execute if entity @s[tag=Purgatory] run function enemy_manager:spawn/purgatory/allocate_type
execute if entity @s[tag=QuestWorld] run function enemy_manager:spawn/questworld/allocate_type
execute if entity @s[tag=TableMountain] run function enemy_manager:spawn/tablemountain/allocate_type
execute if entity @s[tag=Theater] run function enemy_manager:spawn/theater/allocate_type
execute if entity @s[tag=Tocult] run function enemy_manager:spawn/tocult/allocate_type
execute if entity @s[tag=Underworld] run function enemy_manager:spawn/underworld/allocate_type

kill @s
