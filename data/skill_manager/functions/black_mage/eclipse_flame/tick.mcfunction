##############################
### エクリプスフレイム処理
##############################

###着弾時リセット
execute if score @s EclipseRadius matches 0.. run function skill_manager:black_mage/eclipse_flame/tick_after
execute unless score @s EclipseRadius matches 0.. run function skill_manager:black_mage/eclipse_flame/tick_before
