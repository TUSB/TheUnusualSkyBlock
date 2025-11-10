#> skill:act/ninja/shuriken/hit
#
# 手裏剣命中

# 演出
function makeup:skill/act/ninja/shuriken/hit

# 貫通数を減らし、0なら消去
scoreboard players remove @s ShurikenPierceCount 1
execute unless score @s ShurikenPierceCount matches ..0 run return fail

execute on passengers run tag @s add Garbage
tag @s add Garbage
