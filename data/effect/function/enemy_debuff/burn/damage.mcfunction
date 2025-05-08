#> effect:enemy_debuff/burn/hit
#
# 敵火だるまダメージ処理

# ダメージ処理
data modify storage entity: damage set value {physical:10}
function entity:damage/apply/
