##############################
### エクリプスフレイムダメージ付与
##############################

#距離を取得
execute store result score _ _ run function calc:geometry/distance/
#ダメージ付与
execute if score _ _ <= _ EclipseRadius run function skill:damage/apply/
