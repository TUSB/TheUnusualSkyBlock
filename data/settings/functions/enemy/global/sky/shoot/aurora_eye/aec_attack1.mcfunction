#Function
# 5m以内にいるモブに対して実行する
    scoreboard players add @s MP 14
    scoreboard players operation _ MP = @s MP
    execute as @e[distance=..6,predicate=entity:friendly] run function settings:enemy/global/sky/shoot/aurora_eye/aec_attack2
