#> effect:enemy_debuff/burn/tick
#
# 敵火だるま毎tick処理 

# 水に触れていれば解除
execute if predicate entity:is_in_all_water run function effect:enemy_debuff/burn/cure
