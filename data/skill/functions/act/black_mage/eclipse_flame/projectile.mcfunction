##############################
### エクリプスフレイム投射物
##############################

#着弾時
execute unless entity @e[tag=EclipseFlameBullet,distance=..1] run function skill:act/black_mage/eclipse_flame/hit
#演出
function makeup:skill/act/black_mage/eclipse_flame/projectile
