##############################
### ハートブースト発動
##############################

###ハートブースト設定
execute if score _ Level matches 1 run effect give @a[distance=..10] minecraft:health_boost 180 4
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:health_boost 180 9
execute if score _ Level matches 3 run effect give @a[distance=..10] minecraft:health_boost 180 14
execute if score _ Level matches 4 run effect give @a[distance=..10] minecraft:health_boost 180 24
#演出
function makeup:skill/act/white_mage/heart_boost/act0
