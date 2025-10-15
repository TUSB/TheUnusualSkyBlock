#> enemy:break_spawner/damage_score_get
#
# Itemからダメージ量を取得する
#
# @within function enemy:break_spawner/mined

execute store result score _ Calc run data get entity @s Item.components."minecraft:custom_data".SpawnerDamage
kill @s
