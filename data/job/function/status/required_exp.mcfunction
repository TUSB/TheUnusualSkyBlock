#> job:status/required_exp
# 50レベルを上限にして必要経験値量を算出

scoreboard players operation @s _ = @s Level
scoreboard players set _ _ 50
scoreboard players operation @s _ < _ _
scoreboard players operation @s RequiredExp = @s _
scoreboard players set _ _ 10
scoreboard players operation @s RequiredExp /= _ _
scoreboard players operation @s RequiredExp += $World RequiredExp
scoreboard players operation @s RequiredExp *= @s _
