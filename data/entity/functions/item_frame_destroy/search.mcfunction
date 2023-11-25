#> entity:item_frame_destroy/search

#視線先のスポナーを探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless block ^ ^ ^ #entity:unbreakable positioned ^ ^ ^0.1 run function entity:item_frame_destroy/search
execute if block ^ ^ ^ #entity:unbreakable align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=item_frame,distance=..2,sort=nearest,limit=1]
execute if block ^ ^ ^ #entity:unbreakable align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[type=glow_item_frame,distance=..2,sort=nearest,limit=1]