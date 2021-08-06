##############################
### フィール発動
##############################

#ゲームモード分岐
execute if entity @s[gamemode=adventure] run function skill:act/summoner/fill/adventure
execute if entity @s[gamemode=!adventure] run function skill:act/summoner/fill/survival
