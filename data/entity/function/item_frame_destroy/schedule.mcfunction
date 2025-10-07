#> entity:item_frame_destroy/schedule
execute as @a[advancements={entity:item_frames=true}] unless predicate entity:item_frama_destroy/looking_item_frame run function entity:item_frame_destroy/reactivate
execute as @a[advancements={entity:item_frames=true}] if predicate entity:item_frama_destroy/looking_item_frame run schedule function entity:item_frame_destroy/schedule 2t
