##############################
### エクリプスフレイムダメージ付与
##############################

function skill:damage/load
execute at @s positioned ~ ~-1 ~ as @e[distance=..10,tag=Enemy] run function skill:act/black_mage/eclipse_flame/deal_damage2
