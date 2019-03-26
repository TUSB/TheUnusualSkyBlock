##############################
### レベル選択
##############################


execute if entity @s[tag=InstantDamageLv1] run function enemy_manager:occurrence/instant_damage/1
execute if entity @s[tag=InstantDamageLv2] run function enemy_manager:occurrence/instant_damage/2
execute if entity @s[tag=InstantDamageLv3] run function enemy_manager:occurrence/instant_damage/3
execute if entity @s[tag=InstantDamageLv4] run function enemy_manager:occurrence/instant_damage/4
execute if entity @s[tag=InstantDamageLv5] run function enemy_manager:occurrence/instant_damage/5