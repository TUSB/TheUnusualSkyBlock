##############################
### クイック発動
##############################

###クイック設定
execute if score _ Level matches 1 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 1
execute if score _ Level matches 2 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 3
execute if score _ Level matches 3 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 5
#演出
function makeup:skill/act/white_mage/quick/act0
