##############################
### バオル発動
##############################

###バオル設定
effect give @a[distance=..10] minecraft:water_breathing 60 0
effect give @a[distance=..10] minecraft:fire_resistance 60 0
effect give @a[distance=..10] minecraft:slow_falling 60 0
execute if score _ Level matches 2 run effect give @a[distance=..10] minecraft:resistance 60 1
#演出
function makeup:skill/act/white_mage/buffall/act0
