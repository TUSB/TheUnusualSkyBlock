#前方を探索する
#SearchForward:{
#  Loop: int 探索回数
#  Stop: [Block,Mob] 探索を終了する条件
#}

execute store result storage calc: SearchForward.Loop int 0.99999 run data get storage calc: SearchForward.Loop
execute if data storage calc: SearchForward{Stop:[Block]} unless block ^ ^ ^1 air run data modify storage calc: SearchForward.Loop set value 0
execute if data storage calc: SearchForward{Stop:[Mob]} positioned ^ ^ ^1 if entity @e[tag=Mob,limit=1] run data modify storage calc: SearchForward.Loop set value 0
execute if data storage calc: SearchForward{Loop:0} align xyz positioned ~0.5 ~ ~0.5 run function calc:geometry/tp_00000
execute unless data storage calc: SearchForward{Loop:0} positioned ^ ^ ^1 run function calc:geometry/search_forward/loop
