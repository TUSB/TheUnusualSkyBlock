execute if score _ _ matches 0 run summon area_effect_cloud ~ ~ ~ {Radius:0f,Tags:["MoveSide"]}
execute if score _ _ matches 1.. run scoreboard players remove _ _ 1
execute if score _ _ matches 1.. positioned ^ ^ ^0.01 run function entity:enemy/ai/move/move_side_loop
