#Function
# 攻撃力設定
    scoreboard players operation _ Calc = @s Level
    execute store result score @s Attack run scoreboard players add _ Calc 2
