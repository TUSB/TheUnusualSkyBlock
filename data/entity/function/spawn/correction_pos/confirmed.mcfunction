#> entity:spawn/correction_pos/confirmed
# 補正座標を確定させる
scoreboard players set _ _ 1
function calc:geometry/tp_00000
data modify storage tusb_mob: Pos.after set from entity 0-0-0-0-0 Pos
execute as 0-0-0-0-0 run function calc:geometry/return_marker
