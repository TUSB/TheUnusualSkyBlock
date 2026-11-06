#> skill:act/hunter/wild_flare/tick_enemy
#
# ワイルドフレアインターバル消費

scoreboard players remove @s WildFlareInterval 1
execute if score @s WildFlareInterval matches 1.. run return fail
tag @s remove WildFlareInterval
scoreboard players reset @s WildFlareInterval
