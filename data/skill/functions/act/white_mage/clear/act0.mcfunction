##############################
### キアリク発動
##############################

execute if score _ Level matches 1 unless score @s SneakTime matches 1.. run function skill:act/white_mage/clear/cure/level2
execute if score _ Level matches 2 unless score @s SneakTime matches 1.. run function skill:act/white_mage/clear/cure/level3
execute if score _ Level matches 3 unless score @s SneakTime matches 1.. run function skill:act/white_mage/clear/cure/level5

execute if score _ Level matches 1 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/white_mage/clear/cure/level2
execute if score _ Level matches 2 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/white_mage/clear/cure/level3
execute if score _ Level matches 3 if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/white_mage/clear/cure/level5
#演出
function makeup:skill/act/white_mage/clear/act0
