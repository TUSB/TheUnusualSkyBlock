##############################
### モブID分岐 - Tablemountain Ground Blow
##############################

execute if entity @s[tag=Trap] run function enemy_manager:spawn/tablemountain/ground/blow/trap/allocate_subfolder
execute if entity @s[tag=Deidora] run function enemy_manager:summon/global/ground/blow/deidora_60
execute if entity @s[tag=Deidora] as @e[tag=!Initialized,tag=!Spawn,distance=..1] run function enemy_manager:apply_loot_table
execute if entity @s[tag=Deidora] as @e[tag=ApplyTable,distance=..1] run data merge entity @s {DeathLootTable:"loot_manager:table_mountain/test"}
execute if entity @s[tag=Deidora] run tag @e[tag=ApplyTable,distance=..1] remove ApplyTable
execute if entity @s[tag=DragonKnight] run function enemy_manager:summon/global/ground/blow/dragon_knight_20
execute if entity @s[tag=DragonKnight] as @e[tag=!Initialized,tag=!Spawn,distance=..1] run function enemy_manager:apply_loot_table
execute if entity @s[tag=DragonKnight] as @e[tag=ApplyTable,distance=..1] run data merge entity @s {DeathLootTable:"loot_manager:table_mountain/test"}
execute if entity @s[tag=DragonKnight] run tag @e[tag=ApplyTable,distance=..1] remove ApplyTable
execute if entity @s[tag=SlimeKnight] run function enemy_manager:summon/tablemountain/ground/blow/slime_knight_30
execute if entity @s[tag=SpiderBeby] run function enemy_manager:summon/tablemountain/ground/blow/spider_beby_30
