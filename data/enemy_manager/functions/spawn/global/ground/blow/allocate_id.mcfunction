##############################
### MOB割り当て
##############################

execute if entity @s[tag=Ninja] run function enemy_manager:spawn/global/ground/blow/ninja/allocate_ninja
execute if entity @s[tag=Steve] run function enemy_manager:spawn/global/ground/blow/steve/allocate_steve
execute if entity @s[tag=Calcifer] run function enemy_manager:summon/global/ground/blow/calcifer_35
execute if entity @s[tag=CharmingEnderman] run function enemy_manager:summon/global/ground/blow/charming_enderman_15
execute if entity @s[tag=Deidora] run function enemy_manager:summon/global/ground/blow/deidora_60
execute if entity @s[tag=Kawaii] run function enemy_manager:summon/global/ground/blow/kawaii_25
execute if entity @s[tag=Ker] run function enemy_manager:summon/global/ground/blow/ker_50