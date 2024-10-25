#> calc:geometry/search_forward/
#前方を探索する
#SearchForward:{
#  Loop: int 探索距離(m)
#  Stop: [Block,Mob] 探索を終了する条件
#  Align: byte 1bのときalign xyz
#}

execute store result storage calc: SearchForward.Loop int 1 run data get storage calc: SearchForward.Loop 100
function calc:geometry/search_forward/loop
execute if data storage calc: SearchForward{Align:1b} as 0-0-0-0-0 at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
#次tickに返却
schedule function calc:geometry/return_marker 1t replace
