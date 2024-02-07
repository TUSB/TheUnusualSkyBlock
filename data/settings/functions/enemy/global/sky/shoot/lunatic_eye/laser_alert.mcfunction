#Function
# ループ数指定
    scoreboard players set # Calc 12
# 今向いている方向に警告線を飛ばす
    execute at @s if entity @a[predicate=entity:player,distance=..12] positioned ^ ^ ^0.5 run function settings:enemy/global/sky/shoot/lunatic_eye/laser_alert_loop
