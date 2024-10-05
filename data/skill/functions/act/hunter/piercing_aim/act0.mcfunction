##############################
### ピアッシングエイム発動
##############################

###秒数設定
execute if score _ Level matches 1 run scoreboard players set _ _ 25
execute if score _ Level matches 2 run scoreboard players set _ _ 40
###適用
function skill:act/hunter/piercing_aim/act1
execute if score @s SneakTime matches 1.. run scoreboard players set _ Calc 3
execute if score @s SneakTime matches 1.. run scoreboard players operation _ _ /= _ Calc
execute if score @s SneakTime matches 1.. as @a[distance=0.1..16] run function skill:act/hunter/piercing_aim/act1
