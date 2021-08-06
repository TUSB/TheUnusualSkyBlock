##############################
### ケアル発動
##############################

execute if score _ Level matches 1 run scoreboard players set _ _ 10
execute if score _ Level matches 2 run scoreboard players set _ _ 30
execute if score _ Level matches 3 run scoreboard players set _ _ 80
execute if score _ Level matches 4 run scoreboard players set _ _ 200
execute if score _ Level matches 5 run scoreboard players set _ _ 500

execute unless score @s SneakTime matches 1.. run function skill:act/white_mage/cure/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/white_mage/cure/apply
