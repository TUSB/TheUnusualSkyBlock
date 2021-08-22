##############################
### ボミオストラップ発動
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:5,Stop:[Block]}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward
execute at 0-0-0-0-0 run function skill:act/hunter/decelerate_trap/act1
#演出
function makeup:skill/act/hunter/decelerate_trap/act0
