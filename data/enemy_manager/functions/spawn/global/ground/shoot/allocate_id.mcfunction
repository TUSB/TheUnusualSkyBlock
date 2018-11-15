##############################
### MOB割り当て
##############################

execute if entity @s[tag=Curse] run function enemy_manager:spawn/global/ground/shoot/curse/allocate_curse
execute if entity @s[tag=Flag] run function enemy_manager:spawn/global/ground/shoot/flag/allocate_flag
execute if entity @s[tag=Job] run function enemy_manager:spawn/global/ground/shoot/job/allocate_job
execute if entity @s[tag=MagicalAttendant] run function enemy_manager:summon/global/ground/shoot/magical_attendant
execute if entity @s[tag=Magician] run function enemy_manager:summon/global/ground/shoot/magician_75
execute if entity @s[tag=Sankaku] run function enemy_manager:summon/global/ground/shoot/sankaku_30
