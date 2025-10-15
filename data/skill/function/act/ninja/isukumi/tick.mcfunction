#> skill:act/ninja/isukumi/tick
#
# 居縮毎tick処理

scoreboard players remove @s Isukumi 1
execute if score @s Isukumi matches ..0 run function skill:act/ninja/isukumi/end
