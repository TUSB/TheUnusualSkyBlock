##############################
### ケアル発動
##############################

execute if score _ Level matches 1 run scoreboard players set _ _ 12
execute if score _ Level matches 2 run scoreboard players set _ _ 24
execute if score _ Level matches 3 run scoreboard players set _ _ 40
execute if score _ Level matches 4 run scoreboard players set _ _ 60
execute if score _ Level matches 5 run scoreboard players set _ _ 90

execute unless score @s SneakTime matches 1.. run function skill:act/white_mage/cure/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] at @s run function skill:act/white_mage/cure/apply
