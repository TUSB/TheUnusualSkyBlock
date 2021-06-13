execute if score _ _ matches 1.. run scoreboard players remove _ _ 1
execute if score _ _ matches 1.. positioned ^ ^ ^0.01 run function entity:enemy/ai/move/move_front_loop
execute if score _ _ matches 0 run summon area_effect_cloud ~ ~ ~ {Radius:0f,Age:-1,Particle:"block air",Tags:["MoveFront"]}