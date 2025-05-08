#> effect:enemy_debuff/burn/cure_check
#
# 敵火だるま解除判定

execute store result score _ _ run random value 1..10
execute if score _ _ matches 10 run function effect:enemy_debuff/burn/cure
