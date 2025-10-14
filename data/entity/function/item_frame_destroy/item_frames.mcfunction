#> entity:item_frame_destroy/item_frames

# 探索距離7ブロック
data modify storage calc: SearchForward set value {Loop:7d,Stop:[Block]}
execute anchored eyes positioned ^ ^ ^ anchored feet run function calc:geometry/search_forward/

execute at 0-0-0-0-0 run function entity:item_frame_destroy/search

schedule function entity:item_frame_destroy/schedule 1t
