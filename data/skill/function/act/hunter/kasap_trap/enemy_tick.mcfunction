#> skill:act/hunter/kasap_trap/enemy_tick
#
# ルカナントラップ効果消費
scoreboard players remove @s Kasap 1
execute if score @s Kasap matches 1.. run return fail
tag @s remove Kasap
