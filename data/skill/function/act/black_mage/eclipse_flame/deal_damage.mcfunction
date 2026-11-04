#> skill:act/black_mage/eclipse_flame/deal_damage
#
# エクリプスフレイムダメージ付与
#@Within function skill:act/black_mage/eclipse_flame/explosion
function skill:damage/load
execute at @s positioned ~ ~-1 ~ as @e[distance=..10,tag=Enemy] run function skill:act/black_mage/eclipse_flame/deal_damage2
