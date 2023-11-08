#> skill:act/common/summon_lunatic_eye/act0
#
# るなちー召喚
#
# @within function skill:practice/act/common

#前方を探索
data modify storage calc: SearchForward set value {Loop:5,Stop:[Block],Align:1b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 run function skill:act/common/summon_lunatic_eye/act1