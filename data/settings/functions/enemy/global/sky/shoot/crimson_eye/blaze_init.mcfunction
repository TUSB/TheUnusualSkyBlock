#Function
# 攻撃力設定
    scoreboard players set _ _ 2
    scoreboard players operation _ Calc = @s Level
    scoreboard players operation _ Calc /= _ _
    execute store result score @s Attack run scoreboard players add _ Calc 2
