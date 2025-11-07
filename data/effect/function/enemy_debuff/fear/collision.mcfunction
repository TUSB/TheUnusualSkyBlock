#> effect:enemy_debuff/fear/collision
#
# 敵畏怖吹っ飛び衝突

# 衝突ダメージ
data modify storage entity: damage set value {physical:10}
function entity:damage/apply/
