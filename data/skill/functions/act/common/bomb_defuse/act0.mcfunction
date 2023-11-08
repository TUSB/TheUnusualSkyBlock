#> skill:act/common/bomb_defuse/act0
#
# 爆弾解除 処理
#
# @within function skill:practice/act/common

# 足元と1マスしたの爆弾を壊す
    execute if block ~ ~ ~ tnt[unstable=true] run give @s tnt 1
    execute if block ~ ~-1 ~ tnt[unstable=true] run give @s tnt 1
    execute if block ~ ~ ~ tnt run setblock ~ ~ ~ air destroy
    execute if block ~ ~-1 ~ tnt run setblock ~ ~-1 ~ air destroy

# 演出
    function makeup:skill/act/common/bomb_defuse/act0