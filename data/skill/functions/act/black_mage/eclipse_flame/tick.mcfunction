##############################
### エクリプスフレイム処理
##############################

execute unless score @s EclipseRadius matches 0.. run function skill:act/black_mage/eclipse_flame/projectile
execute if score @s EclipseRadius matches 0.. run function skill:act/black_mage/eclipse_flame/explosion
