#> skill:act/summoner/petit_black/mob_damage1

# ダメージ分岐
# 半径計算を行う
    function skill:damage/load
    scoreboard players operation # Calc = @s Interval
    execute at @s as @e[distance=..6,tag=Enemy] run function skill:act/summoner/petit_black/mob_damage2