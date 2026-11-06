#> skill:act/white_mage/over_heal/sneak
#
# オーバーヒールスニーク付与

# エフェクト付与
execute if score _ Level matches 1 run effect give @s minecraft:health_boost 40 4
execute if score _ Level matches 1 run effect give @s minecraft:regeneration 40 0
execute if score _ Level matches 2 run effect give @s minecraft:health_boost 40 9
execute if score _ Level matches 2 run effect give @s minecraft:regeneration 40 1
execute if score _ Level matches 3 run effect give @s minecraft:health_boost 40 14
execute if score _ Level matches 3 run effect give @s minecraft:regeneration 40 2
execute if score _ Level matches 4 run effect give @s minecraft:health_boost 40 24
execute if score _ Level matches 4 run effect give @s minecraft:regeneration 40 3

# 演出
function makeup:skill/act/white_mage/over_heal/apply
