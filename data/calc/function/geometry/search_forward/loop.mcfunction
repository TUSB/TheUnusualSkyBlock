#> calc:geometry/search_forward/loop
#前方を探索する
execute store result storage calc: SearchForward.Loop int 0.99999 run data get storage calc: SearchForward.Loop
execute if data storage calc: SearchForward{Stop:[Block]} unless block ^ ^ ^0.01 #block:no_collision run data modify storage calc: SearchForward.Loop set value 0
execute if data storage calc: SearchForward{Stop:[Mob]} positioned ^ ^ ^0.01 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=Enemy,dx=0,dy=0,dz=0] run data modify storage calc: SearchForward.Loop set value 0
execute if data storage calc: SearchForward{Loop:0} run function calc:geometry/tp_00000
execute unless data storage calc: SearchForward{Loop:0} positioned ^ ^ ^0.01 run function calc:geometry/search_forward/loop
