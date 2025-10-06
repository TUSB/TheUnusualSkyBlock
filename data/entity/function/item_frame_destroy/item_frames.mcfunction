#> entity:item_frame_destroy/item_frames

# 探索距離7ブロック
    scoreboard players set _ _ 70

# 視線先のスポナーを探索
    execute anchored eyes positioned ^ ^ ^ run function entity:item_frame_destroy/search

advancement revoke @s only entity:item_frames