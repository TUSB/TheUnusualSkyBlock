#> skill:act/common/sonic_burst/loop
#
# ソニックバースト ループ処理
#
# @within function skill:act/common/sonic_burst/act0

# 範囲内にいるプレイヤーは全員対象
    scoreboard players remove _ Calc 1
    function makeup:skill/act/common/sonic_burst/loop
    execute positioned ~-1 ~-1 ~-1 run tag @e[tag=Enemy,dx=1,dy=1,dz=1] add Landing
    execute if score _ Calc matches 1.. positioned ^ ^ ^1 run function skill:act/common/sonic_burst/loop