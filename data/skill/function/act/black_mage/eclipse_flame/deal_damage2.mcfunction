#> skill:act/black_mage/eclipse_flame/deal_damage2
#
# エクリプスフレイムダメージ付与

# 距離を取得 範囲外なら終了
execute store result score _ _ run function calc:geometry/distance/
execute unless score _ _ <= _ EclipseRadius run return fail

# 実行者の位置で実行
execute at @s run function skill:act/black_mage/eclipse_flame/deal_damage3
