#> calc:geometry/search_above/to_limit
#
# 上方探索 高度限界まで
#SearchAbove:{
#  Pos: int 現在のY座標
#  Align: byte 1bのときalign xyz
#}

# 残り探索数計算
scoreboard players set _ _ 321
execute store result score _ Calc run data get storage calc: SearchAbove.Pos -1
execute store result storage calc: SearchAbove.Loop int 1 run scoreboard players operation _ Calc += _ _

function calc:geometry/search_above/loop
execute if data storage calc: SearchAbove{Align:1b} as 0-0-0-0-0 at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# 空に面している判定
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[1]
data modify storage calc: SearchAbove merge value {NothingAbove:0b}
execute if score _ _ matches 320.. run data modify storage calc: SearchAbove merge value {NothingAbove:1b}

# 次tickに返却
schedule function calc:geometry/return_marker 1t replace
