#> entity:item_frame_destroy/search

# 額縁の無敵を解除
execute as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] run data modify entity @s Invulnerable set value 0b
