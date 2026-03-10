#> enemy:break_spawner/get_break_info
#
# Itemからダメージ量を取得する
#
# @within function enemy:break_spawner/mined

data remove storage tusb_mob: spawner_breaker
data modify storage tusb_mob: spawner_breaker.name set from entity @s Item.components."minecraft:profile".name
execute store result score _ Calc run data get entity @s Item.components."minecraft:custom_data".SpawnerDamage
kill @s
