##############################
### フィール発動
##############################

# 低速落下
    effect give @s slow_falling 2 0 true

#ゲームモード分岐
execute if entity @s[gamemode=adventure] run function skill:act/summoner/fill/adventure
execute if entity @s[gamemode=!adventure] run function skill:act/summoner/fill/survival
