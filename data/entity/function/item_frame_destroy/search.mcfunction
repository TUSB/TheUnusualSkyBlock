#> entity:item_frame_destroy/search

#視線先のスポナーを探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless entity @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] positioned ^ ^ ^0.1 run function entity:item_frame_destroy/search

# 額縁の無敵を解除
execute as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] run data modify entity @s Invulnerable set value 0b
