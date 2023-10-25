#> enemy:natural_spawn_type
#
# creeperかsilverfishで自然湧き処理の分岐をする
#
# @within function entity:initialize_entity

execute if entity @s[type=creeper] run function enemy:natural_spawn_condition
execute if entity @s[type=silverfish] run function enemy:silverfish_spawn/condition