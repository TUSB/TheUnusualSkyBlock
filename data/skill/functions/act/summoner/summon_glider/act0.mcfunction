##############################
### サモンＥ：グライダー
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:5,Stop:[Block],Align:1b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 run function skill:act/summoner/summon_glider/act1
