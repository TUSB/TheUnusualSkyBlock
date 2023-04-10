##############################
### リジェネレーション発動
##############################

###リジェネレーション設定
execute if score _ Level matches 1 run effect give @a[distance=..10] minecraft:regeneration 120 0
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:regeneration 120 1
execute if score _ Level matches 3 run effect give @a[distance=..10] minecraft:regeneration 120 2
execute if score _ Level matches 4 run effect give @a[distance=..10] minecraft:regeneration 120 3
#演出
function makeup:skill/act/white_mage/regeneration/act0
