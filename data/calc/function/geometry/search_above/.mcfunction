#> calc:geometry/search_above/
#
# 上方探索
#SearchAbove:{
#  Loop: int 探索距離(m)
#  Align: byte 1bのときalign xyz
#}

function calc:geometry/search_above/loop
execute if data storage calc: SearchAbove{Align:1b} as 0-0-0-0-0 at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# 次tickに返却
schedule function calc:geometry/return_marker 1t replace
