#> skill:act/hunter/decelerate_trap/enemy_tick
#
# ボミオストラップ効果消費
scoreboard players remove @s Decelerate 1
execute if score @s Decelerate matches 1.. run return fail
tag @s remove Decelerate
