#> enemy:natural_spawn/fork
#
# creeperかsilverfishで自然湧き処理の分岐をする
#
# @within function entity:initialize_entity

execute if entity @s[type=creeper] run function enemy:natural_spawn/condition
execute if entity @s[type=silverfish] run function enemy:natural_spawn/silverfish/condition
execute if entity @s[type=warden] run function enemy:natural_spawn/warden/condition
