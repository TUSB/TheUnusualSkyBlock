#Function
# ループ数指定
    scoreboard players set # Calc 64
# 今向いている方向に警告線を飛ばす
    execute at @s if entity @a[predicate=entity:player,distance=..16] positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_second_loop
