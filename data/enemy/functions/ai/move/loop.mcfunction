execute if score _ _ matches 1.. run scoreboard players remove _ _ 1
execute if score _ _ matches 0 run function calc:geometry/tp_00000
execute if score _ _ matches 1.. positioned ^ ^ ^0.01 run function enemy:ai/move/loop
