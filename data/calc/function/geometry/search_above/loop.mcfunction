#> calc:geometry/search_above/
#
# 上方探索ループ

execute store result storage calc: SearchAbove.Pos int 0.99999 run data get storage calc: SearchAbove.Pos
execute unless block ~ ~1 ~ #block:no_collision run data modify storage calc: SearchAbove.Pos set value 0
execute if data storage calc: SearchAbove{Pos:0} run function calc:geometry/tp_00000
execute unless data storage calc: SearchAbove{Pos:0} positioned ~ ~1 ~ run function calc:geometry/search_above/loop
