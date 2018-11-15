##############################
### MOB割り当て
##############################

execute if entity @s[tag=Eye] run function enemy_manager:spawn/global/sky/blow/eye/allocate_eye
execute if entity @s[tag=BumperStorm] run function enemy_manager:summon/global/sky/blow/bumper_storm_35
execute if entity @s[tag=BumperTornado] run function enemy_manager:summon/global/sky/blow/bumper_tornado_40
execute if entity @s[tag=Death] run function enemy_manager:summon/global/sky/blow/death_65
