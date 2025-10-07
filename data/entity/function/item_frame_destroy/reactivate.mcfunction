#> entity:item_frame_destroy/reactivate
#
# 額縁無敵 再有効化
#

execute as @e[type=#entity:item_frames] run data modify entity @s Invulnerable set value 1b
advancement revoke @s only entity:item_frames
