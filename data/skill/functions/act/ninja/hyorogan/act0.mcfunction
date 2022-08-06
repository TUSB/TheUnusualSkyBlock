##############################
### 兵糧丸発動
##############################

execute if score _ Level matches 1 run effect give @s minecraft:saturation 1 1
execute if score _ Level matches 1 run function skill:act/white_mage/clear/cure/level2

execute if score _ Level matches 2 run effect give @s minecraft:saturation 1 5
execute if score _ Level matches 2 run function skill:act/white_mage/clear/cure/level3
#演出
function makeup:skill/act/ninja/hyorogan/act0
