#Function
# 1ダメージなら0ダメージに
    execute if score @s Damage matches 0..1 run scoreboard players reset @s Damage
