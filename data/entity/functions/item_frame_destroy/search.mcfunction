#> entity:item_frame_destroy/search

#視線先のスポナーを探索
scoreboard players remove _ _ 1
execute if score _ _ matches 1.. unless entity @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] positioned ^ ^ ^0.1 run function entity:item_frame_destroy/search

# アイテムが飾られていなければ額縁を撤去
execute if entity @s[advancements={entity:item_frames={item_frame=true}}] as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] unless data entity @s Item run summon item ~ ~ ~ {Item:{id:"item_frame",Count:1b},Motion:[0d,0.2d,0d]}
execute if entity @s[advancements={entity:item_frames={glow_item_frame=true}}] as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] unless data entity @s Item run summon item ~ ~ ~ {Item:{id:"glow_item_frame",Count:1b},Motion:[0d,0.2d,0d]}
execute as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] unless data entity @s Item run kill @s

# アイテムが飾られていれば飾られているアイテムを排出
execute as @e[type=#entity:item_frames,distance=..0.25,sort=nearest,limit=1] if data entity @s Item at @s positioned ^ ^ ^0.1 run function entity:item_frame_destroy/detach