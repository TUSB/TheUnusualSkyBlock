##############################
### モブID分岐 - Global Sky Blow
##############################

execute if entity @s[tag=Eye] run function enemy_manager:spawn/global/sky/blow/eye/allocate_subfolder
execute if entity @s[tag=BumperStorm] run function enemy_manager:summon/global/sky/blow/bumper_storm_35
execute if entity @s[tag=BumperTornado] run function enemy_manager:summon/global/sky/blow/bumper_tornado_40
execute if entity @s[tag=Death] run function enemy_manager:summon/global/sky/blow/death_65
execute if entity @s[tag=Ghost] run function enemy_manager:summon/global/sky/blow/ghost_20
execute if entity @s[tag=MissileCreeper] run function enemy_manager:summon/global/sky/blow/missile_creeper_15
execute if entity @s[tag=WingSlime] run function enemy_manager:summon/global/sky/blow/wing_slime_30
