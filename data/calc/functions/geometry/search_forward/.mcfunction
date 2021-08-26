#前方を探索する
#SearchForward:{
#  Loop: int 探索回数
#  Stop: [Block,Mob] 探索を終了する条件
#}

function calc:geometry/search_forward/loop
#次tickに返却
schedule function calc:geometry/return_marker 1t replace
