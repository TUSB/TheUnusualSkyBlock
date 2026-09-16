#> skill:act/black_mage/eclipse_flame/deal_damage2
#
# エクリプスフレイムダメージ付与

# 距離を取得 範囲外なら終了
execute store result score _ _ run function calc:geometry/distance/
execute unless score _ _ <= _ EclipseRadius run return fail
# ダメージ・火だるま付与
function skill:damage/apply/
function effect:enemy_debuff/burn/apply
