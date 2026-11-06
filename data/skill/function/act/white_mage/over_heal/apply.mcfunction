#> skill:act/white_mage/over_heal/apply
#
# オーバーヒール付与

# エフェクト付与
execute if score _ Level matches 1 run effect give @s minecraft:health_boost 120 4
execute if score _ Level matches 1 run effect give @s minecraft:regeneration 120 0
execute if score _ Level matches 2 run effect give @s minecraft:health_boost 120 9
execute if score _ Level matches 2 run effect give @s minecraft:regeneration 120 1
execute if score _ Level matches 3 run effect give @s minecraft:health_boost 120 14
execute if score _ Level matches 3 run effect give @s minecraft:regeneration 120 2
execute if score _ Level matches 4 run effect give @s minecraft:health_boost 120 24
execute if score _ Level matches 4 run effect give @s minecraft:regeneration 120 3

# 演出
function makeup:skill/act/white_mage/over_heal/apply
