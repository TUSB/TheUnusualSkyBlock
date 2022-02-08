##############################
### サモン：ぷちブラック 生成
##############################

#前方を探索
data modify storage calc: SearchForward set value {Loop:2,Stop:[Block],Align:0b}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 run function skill:act/summoner/petit_black/create1
