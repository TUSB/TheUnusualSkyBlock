##############################
### クイック発動
##############################

###クイック設定
execute if score _ Level matches 1 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 2
execute if score _ Level matches 2 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 5
execute if score _ Level matches 3 as @a[distance=..10] at @s run effect give @s minecraft:haste 60 8
#演出
function makeup:skill/act/white_mage/quick/act0
