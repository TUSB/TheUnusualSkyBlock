##############################
### リジェネレーション発動
##############################

###リジェネレーション設定
execute if score _ Level matches 1 run effect give @a[distance=..10] minecraft:regeneration 180 1
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:regeneration 180 2
execute if score _ Level matches 3 run effect give @a[distance=..10] minecraft:regeneration 180 3
execute if score _ Level matches 4 run effect give @a[distance=..10] minecraft:regeneration 180 4
#演出
function makeup:skill/act/white_mage/regeneration/act0
