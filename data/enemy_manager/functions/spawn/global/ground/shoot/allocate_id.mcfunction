##############################
### モブID分岐 - Global Ground Shoot
##############################

execute if entity @s[tag=Curse] run function enemy_manager:spawn/global/ground/shoot/curse/allocate_subfolder
execute if entity @s[tag=Flag] run function enemy_manager:spawn/global/ground/shoot/flag/allocate_subfolder
execute if entity @s[tag=Job] run function enemy_manager:spawn/global/ground/shoot/job/allocate_subfolder
execute if entity @s[tag=CloudSpider] run function enemy_manager:summon/global/ground/shoot/cloud_spider_30
execute if entity @s[tag=MagicalAttendant] run function enemy_manager:summon/global/ground/shoot/magical_attendant_50
execute if entity @s[tag=Magician] run function enemy_manager:summon/global/ground/shoot/magician_75
execute if entity @s[tag=PumpkinKid] run function enemy_manager:summon/global/ground/shoot/pumpkin_kid_40
execute if entity @s[tag=Sankaku] run function enemy_manager:summon/global/ground/shoot/sankaku_30
execute if entity @s[tag=SkeletonRider] run function enemy_manager:summon/global/ground/shoot/skeleton_rider_5
