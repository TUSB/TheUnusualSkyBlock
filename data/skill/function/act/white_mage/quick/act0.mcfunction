#> skill:act/white_mage/quick/act0
#
# クイック発動

# クイック設定
execute if score _ Level matches 1 run effect give @a[distance=..10] minecraft:haste 90 2
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:haste 90 4
execute if score _ Level matches 3 run effect give @a[distance=..10] minecraft:haste 90 6

# 演出
function makeup:skill/act/white_mage/quick/act0
