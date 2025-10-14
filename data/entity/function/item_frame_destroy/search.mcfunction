#> entity:item_frame_destroy/search

# 額縁の無敵を解除
execute as @e[type=#entity:item_frames,distance=..1,sort=nearest,limit=1] run data modify entity @s Invulnerable set value 0b

stopsound @s * minecraft:entity.item_frame.add_item
stopsound @s * minecraft:entity.glow_item_frame.add_item
