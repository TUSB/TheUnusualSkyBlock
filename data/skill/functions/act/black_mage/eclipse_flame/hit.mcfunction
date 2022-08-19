##############################
### エクリプスフレイム着弾
##############################

#位置補正
tp @s ~ ~-2 ~
#着弾時リセット
scoreboard players set @s EclipseRadius 100
data modify entity @s Duration set value 400
#周囲のエクリプスフレイムのDurationを半減
execute as @e[tag=EclipseFlameCore,distance=0.01..6] store result entity @s Duration int 0.5 run data get entity @s Duration
#演出
function makeup:skill/act/black_mage/eclipse_flame/hit
